# Code that includes the packages, functions and objects needed to create the 
# Plotly charts used in the ScotPHO website.
# The function produces an HTML file that can be embedded in the website backend.
# Read more about this process and code in the Plotly chart SOP.

###############################################.
#TO DO 
# https://www.r-bloggers.com/how-to-add-trend-lines-in-r-using-plotly/
# Check what use for horizontal/vertical bar charts, should we mainly do horizontal?
# Dual axis not really working - move to subplots?
# Fix issues when embedded in website (take out size?)
# Area plot chart wrong order of x axis (and colours)
# opportunity to get the problem with simd decile order fixed
# Do we need quotations for variables?
# For base 64 https://www.rdocumentation.org/packages/jsonlite/versions/1.6.1/topics/base64

############################.
##Packages----
############################.
library (tidyverse)
library(plotly) 
library(htmlwidgets)
library(webshot)
library(magrittr)

############################.
##Plot and upload parameters----
############################.
#Login credentials to ScotPHO plotly.
if (sessionInfo()$platform %in% c("x86_64-redhat-linux-gnu (64-bit)", "x86_64-pc-linux-gnu (64-bit)")) {
  source("//PHI_conf/ScotPHO/Website/Charts/Plotly/login_credentials.R")
  data_folder <- "//PHI_conf/ScotPHO/Website/Charts/Plotly/data/"
} else  {
  source("//stats/ScotPHO/Website/Charts/Plotly/login_credentials.R")
  data_folder <- "//stats/ScotPHO/Website/Charts/Plotly/data/"

}
  
############################.
### Palettes ----
#Palette used by the functions onebar, barcompar and oneline.
pal1color <- '#08519c'
#Palette of colors for those with no particular groupings
palnogroups <- c('#08519c','#bdd7e7','#3182bd', '#6baed6', '#eff3ff')
#Palette for those with a single category per sex and overall
palbysexoverall <- c('#000000', '#08519c','#bdd7e7')
#Palette for alcohol conditions charts (it is variation of the previous one)
palalccondition <- c('#08519c', '#000000','#bdd7e7')
#Palettes for CLD mortality and morbidity by age group
pal_cldmortage <- c('#d0d1e6', '#c6dbef', '#9ecae1', '#6baed6', '#3182bd', '#08519c', '#000000')
pal_cldmorbage <- c('#d0d1e6','#c6dbef','#9ecae1','#6baed6','#4292c6','#2171b5','#084594', '#000000')
#Excel default used by David Walsh for his Health Inequalities area chart.
pal_health_ineq_area <- c('#800000','#014181','#F79646','#4BACC6','#8064A2','#9BBB59','#C0504D', '#4F81BD')
#Palettes for SIMD quintile and 5 age groups and other gradient like charts
pal_five_gradient <- c('#abd9e9', '#74add1', '#4575b4', '#313695', '#022031')
#Palettes for SIMD decile (and overall)
pal_simd <- c('#a50026', '#313695', '#d73027', '#f46d43', '#fdae61', '#fee090', '#e0f3f8',
              '#abd9e9', '#74add1', '#4575b4', '#000000')
pal_simd2 <- c('#543005', '#313695', '#8c510a', '#bf812d', '#dfc27d', '#f6e8c3', '#e0f3f8',
               '#abd9e9', '#74add1', '#4575b4', '#000000')
#Palette for 9 series in a gradient
pal_gradient9 <- c('#543005', '#8c510a', '#bf812d', '#dfc27d', '#d0d1e6',
                   '#abd9e9', '#74add1', '#4575b4', '#313695')
#Palette for those with two categories per sex
pal2bysex <- c('#08519c','#bdd7e7', '#a6611a', '#dfc27d')
#Palette for those with two categories per sex and overall
pal2bysexoverall <- c('#000000', '#747474', '#08519c','#bdd7e7', '#a6611a', '#dfc27d')
#Palette for those with three categories per sex
pal3bysex <- c('#08519c','#4393c3', '#d1e5f0', '#8c510a', '#bf812d', '#f6e8c3')
#Palette for those with five categories per sex
pal5bysex <- c('#2166ac','#4393c3', '#92c5de', '#d1e5f0', '#053061',
               '#8c510a', '#bf812d', '#dfc27d', '#f6e8c3', '#543005')

############################.
#ScotPHO logo.
#Needs to be https address or if local in code 64 (the latter does not work with 4.7 plotly)
scotpho_logo <- list(source ="https://raw.githubusercontent.com/ScotPHO/plotly-charts/master/scotpho.png",
                     xref = "paper", yref = "paper",
                     x= -0.09, y= 1.16, sizex = 0.16, sizey = 0.12, opacity = 1)

############################.
### Plot function ----
############################.
#' @param filepath Filepath of the data file, it also defines the output name.
#' It needs to be like: "folder/file" and folder refers to a subfolder withing the
#' data_folder folder.
#' @param chart_type what type of chart is. At the moment it accepts: "onebar",
#' "multibar", "barcompar", "stackedbar", "oneline", "multiline", "multiline_dashe" "dualaxisline", "areaplot"
#' @param xvar name of the variable for your x axis between quotes
#' @param yvar name of the variable for your y axis between quotes
#' @param group name of your grouping variable between quotes
#' @param comparator name of the variable for your comparator between quotes
#' @param compname name of your comparator area
#' @param title title of the chart
#' @param sourc text describing the source, its url and notes
#' @param xaxtitle title of the x axis
#' @param yaxtitle title of the y axis
#' @param data_down last part of the url to the data files in the server, e.g. 1934/obesity_chart1.csv
#' @param yvar_dashed Only for multiline_dashed. Column containing the dashed part of the serie
#' @param horizontal Only for stackedbar charts. Set it up as an horizontal stackedbar chart.
#' @param tick_freq Only for multiline and multiline_dashed. Frequency of ticks in the x axis
#' @param pal_col Palette used in the plot
#' @param order Used to order the bar charts by the yvar value
#' @param minyrange Only for dualaxisline. Minimum value for yaxis
#' @param maxyrange Only for dualaxisline. Maxmium value for yaxis
#' @param yvar2 Only for dualaxisline. Name of the variable for the second y axis
#' @param yname Only for dualaxisline. Label for the first y axis
#' @param y2name Only for dualaxisline. Label for the second y axis
#' @param yaxtitle2 Only for dualaxisline. Title second y axis
#' @param static creates static version of the chart

plot_webchart <- function (filepath, chart_type, xvar, yvar, group = NULL, comparator, compname, 
                          title, sourc, xaxtitle, yaxtitle, yvar_dashed, data_down = NULL,
                          horizontal = F, tick_freq = 2, pal_col = NULL, order = FALSE,
                          minyrange, maxyrange, yvar2, yname, y2name, yaxtitle2,
                          static = F) {
  
  ###############################################.
  # Common layout 
  title_plot <-  list(text = paste0(title, "<br>", "<sup><i>Source: ", sourc),
                      font = list(size=15)) #title size
  # Margin
  margin_plot <- list(l = 80, r = 50, b = 80, t = 100, pad = 4) #margins
  #yaxis plot
  yaxis_plot <- list(title = yaxtitle, rangemode="tozero", fixedrange = TRUE)
  # x axis
  xaxis_plot <- list(title = xaxtitle, tickfont = list(size=10), fixedrange = TRUE)
  
  ###############################################.
  # Reading data 
  
  data_plot <- read_csv(paste0(data_folder, filepath, ".csv")) %>% 
    mutate_if(is.numeric, round, 1) %>% as.data.frame()
    
  #Number of factors, so it knows how many colors of the pal to use
  cat_length <- length(unique(data_plot[,group]))
  
  pal_chose <-pal_col #Palette

    ###############################################.
    ## Multiple bar plot ----
  if (chart_type == "multibar") { # MULTIPLE BAR PLOT
    plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y=data_plot[,yvar],
                           type = "bar",  #size of plot
                           #Grouping variable for color and palette
                           color=as.factor(data_plot[,group]), colors = pal_chose[1:cat_length]) 
    
    ###############################################.
    ## Single bar plot ----
  } else if (chart_type == "onebar") { # SINGLE BAR PLOT
    plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y=data_plot[,yvar],
                           type = "bar",  
                           marker = list(color = pal1color)) 
  
    ###############################################.
    ## Bar plot with comparator line ----
  } else if (chart_type == "barcompar") { # BAR PLOT WITH COMPARATOR LINE
    plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar]) %>% 
      #adding bar layer
      add_bars(y=data_plot[,yvar], name=xaxtitle, showlegend = FALSE, #hiding this layer from legend
               marker = list(color = pal1color)) %>% #changing bar color
      #Comparator line
      add_lines(y = data_plot[,comparator], name = compname, 
                line = list(color = '#FF0000')) %>% #changing line color
      layout(hovermode = 'false') # to get hover compare mode as default
    
    ###############################################.
    ## Stacked bar plot ----
  } else if (chart_type == "stackedbar") { # STACKED BAR PLOT
    
      if (horizontal == T) { #Horizontal stacked bar charts
        
        # Reversing factors so plot alphabetically from top to bottom
        levels(data_plot[ ,yvar]) <- sort(levels(data_plot[ ,yvar]), decreasing = TRUE)
        
        yaxis_plot[["dtick"]] <- 1
        margin_plot <- list( l = 70, r = 0, b = 0, t = 80, pad = 4 ) #margin-paddings in stacked bar horizontal
        
        plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y=data_plot[,yvar],
                               type = "bar", #size of plot
                               color=as.factor(data_plot[,group]), colors = pal_chose[1:cat_length], 
                               orientation = 'h') %>% 
          layout(barmode = 'stack', hovermode = 'false') #stacked bars
        
        # tickangle = 360,
      } else { #Vertical stacked bar charts
        plot_plotly <- plot_ly(data=data_plot, x=as.factor(data_plot[,xvar]), y=data_plot[,yvar],
                               type = "bar",  #size of plot
                               color=as.factor(data_plot[,group]), colors = pal_chose[1:cat_length]) %>% 
          layout(barmode = 'stack', hovermode = 'false') #stacked bars
      } 
    
    ###############################################.
    ## Single line plot ----
  } else if (chart_type == "oneline") { # SINGLE LINE PLOT
      plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y=data_plot[,yvar],
                             type = "scatter", mode='lines',  
                             line = list(color = pal1color)) #Grouping variable for color and palette
      
    ###############################################.
    ## Multiple lines  ----
  } else if (chart_type == "multiline") { # MULTIPLE LINES PLOT
    # Custom layout
    xaxis_plot[["dtick"]] <- tick_freq
    # legend_plot <-  list(x = 100, y = 0.5) 
    
    plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y = data_plot[,yvar],
                           type = 'scatter', mode = 'lines',
                           color=as.factor(data_plot[,group]), colors = pal_chose[1:cat_length]) %>% 
      # to get hover compare mode as default
      layout(hovermode = 'false')#, legend = legend_plot) 
    
    ###############################################.
    ## Multiple lines with parts dashed ----
  } else if (chart_type == "multiline_dashed") { # MULTIPLE LINES WITH PART DASHED
    # Custom layout
    xaxis_plot[["dtick"]] <- tick_freq
    # legend_plot <-  list(x = 100, y = 0.5) 
    
    plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y = data_plot[,yvar],
                           color=as.factor(data_plot[,group]), colors = pal_chose[1:cat_length]) %>% 
      add_lines(y = data_plot[,yvar]) %>% #normal line
      add_lines(y = data_plot[,yvar_dashed], line = list(dash="dash"),
                showlegend = FALSE) %>% #dashed line
      # to get hover compare mode as default
      layout(hovermode = 'false')#, legend = legend_plot) 
    
    ###############################################.
    ## Dual axis line plot ----
  } else if (chart_type == "dualaxislines") { # DUAL AXIS LINE PLOT
    # Custom layout
    yaxis_plot[["range"]] <-c(minyrange, maxyrange)
    # legend_plot <-  list(x = 100, y = 0.5) 
    
    plot_plotly <- plot_ly(data=data_plot) %>%  
      add_lines(data_plot[,xvar], y=data_plot[,yvar], name = yname,  
                line =list(color=pal1color)) %>% # first axis line
      add_lines(data_plot[,xvar], y=data_plot[,yvar2], name = y2name, yaxis = "y2", 
                line =list(color='#FF0000')) %>% # second axis line
      layout(yaxis2 = list(title = yaxtitle2, rangemode="tozero", side = "right",
                           tickfont = list(color = "red"), overlaying = "y")) 
    
    } else if (chart_type == "areaplot") {
      plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y=data_plot[,yvar],
                             type = "scatter", mode = 'none', stackgroup = 'one', 
                             #Grouping variable for color and palette
                             color=as.factor(data_plot[,group]), colors = pal_chose[1:cat_length])
    }
  
  ###############################################.
  # Applying common layout ----
  #If you need the plot ordered then it changes the layout
  if (order == TRUE | chart_type == "barcompar") { 
    xaxis_plot[["categoryorder"]] <- "array"
    xaxis_plot[["categoryarray"]] <-  sort(data_plot[,yvar])
  }
    plot_plotly %<>% 
    layout(title = title_plot, yaxis = yaxis_plot, xaxis = xaxis_plot,
           # legend = list(orientation = 'h',  x = 0.25, y = 1.2),
           margin = margin_plot, images = scotpho_logo) %>%
    config(displaylogo = F, editable = F) # taking out plotly logo and edit button
    
    ###############################################.
    # Pushing chart to cloud server

    if (static == FALSE) {
      api_create(x=plot_plotly, filename = filepath, sharing = "public") #Upload to server

      ###############################################.
      # Preparing HTML final file
      # This should be used once the Umbraco solution works well
      plot_name <- sub('.*\\/', '', filepath) # name without the folder bit

      # Partial bundle only saves the needed files (js) you need for the chart
      htmlwidgets::saveWidget(partial_bundle(plot_plotly, local = T),
                              paste0(data_folder, filepath, ".html"))

      html_file <- paste(readLines(paste0(data_folder, filepath, ".html")), collapse="\n")

      #HTML code that needs to be taken out
      string1 <- '<!DOCTYPE html>\n<html>\n<head>\n<meta charset=\"utf-8\" />\n<title>plotly</title>\n'
      string2 <- '</head>\n<body style="background-color: white;">'
      string3 <- '</body>\n</html>'

      html_file <- gsub(string1, "", html_file)
      html_file <- gsub(string2, "", html_file)
      html_file <- gsub(string3, "", html_file)

      # Substitutes the id for a unique one to ensure multiple charts work in one page
      html_file <- gsub('id="htmlwidget-(.*?)"', paste0('id="', plot_name, '"'), html_file)
      html_file <- gsub('data-for="htmlwidget-(.*?)"', paste0('data-for="', plot_name, '"'), html_file)

      # Adding some code and annotations t the final HTML file
      start_html <- '<div style="width: 650px; height: 500px;">'
      end_html <- paste0('<div style="width: 25%; float: left;">Source:', sourc, '</div>',
                         '<div style="width: 25%; float: left;">',
                         '<a id="download_data" href="https://www.scotpho.org.uk/media/', data_down,
                         '" target="_blank" download>Download data</a>
  </div>
  <div style="width: 50%; float: left;">Note: Year of earliest positive specimen.</div>
  </div>')

      html_file <- paste0(start_html, html_file, end_html)

      # Saving as HTML
      write.table(html_file, file=paste0(data_folder, filepath, ".html"),
                  quote = FALSE, col.names = FALSE, row.names = FALSE)

    } else if (static == TRUE) { # Exporting as PNG

          export(p = plot_plotly, file=paste0(data_folder, filepath, ".png"), zoom = 4)
       
    }
    
  plot_plotly # show the plot
  
} #end of function

##END