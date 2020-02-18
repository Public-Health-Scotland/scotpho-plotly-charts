#This syntax defines palettes, plot parameters and plotting functions to create
#charts using plotly and uploading to their server.
#Read more about this in the Plotly chart SOP.

###############################################.
#TO DO 
# https://www.r-bloggers.com/how-to-add-trend-lines-in-r-using-plotly/
#Test if annotations still needed?
# Check what use for horizontal/vertical bar charts
# What to do with hovermode = 'false'?
# Dual axis not really woking
# Fix issues when embedded in website (take out size?)
# Rounding before plot?
# Describe all parameters of function
# Area plot chart wrong order of x axis (and colours)

############################.
##Packages----
############################.
library (tidyverse)
library(plotly) #version 4.7

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



###############################################.
# Cleaning HTML 

#HTML code that needs to be taken out
string1 <- '<!DOCTYPE html>\n<html>\n<head>\n<meta charset=\"utf-8\" />\n<title>plotly</title>\n'
string2 <- '</head>\n<body style="background-color: white;">'
string3 <- '</body>\n</html>'

html_file <- gsub(string1, "", html_file)
html_file <- gsub(string2, "", html_file)
html_file <- gsub(string3, "", html_file)

# Substitutes the id for a unique one to ensure multiple charts work in one page
html_file <- gsub('id="htmlwidget-(.*?)"', 'id="test"', html_file)
html_file <- gsub('data-for="htmlwidget-(.*?)"', 'data-for="test"', html_file)

# Saving
write.table(html_file, file='test.html',  quote = FALSE,
            col.names = FALSE, row.names = FALSE)
############################.
### Plot functions----
############################.
plot_website <- function (filepath, chart_type, xvar, yvar, group = NULL, comparator, compname, 
                          title, sourc, xaxtitle, yaxtitle, yvar_dashed,
                          tick_freq = 2, pal_col = NULL, order = FALSE,
                          minyrange, maxyrange, yvar2, yname, y2name, yaxtitle2 ) {
  
  ###############################################.
  # Common layout 
  title_plot <-  list(text = paste(title, "<br>", "<sup><i>Source: ", sourc, sep=""), #title
                      font = list(size=15)) #title size
  # Margin
  margin_plot <- list( l = 70, r = 50, b = 150, t = 50, pad = 4) 
  #  margin=list( l = 70, r = 0, b = 0, t = 80, pad = 4 ), #margin-paddings in stacked bar horizontal
  
  #yaxis plot
  yaxis_plot <- list(title = yaxtitle, rangemode="tozero")
  #  yaxis = list(title = yaxtitle, dtick =1) #stacked bars horizontal
  
  # x axis
  xaxis_plot <- list(title = xaxtitle, tickfont =list(size=10))
  
  ###############################################.
  # Reading data 
  
  data_plot <- read.csv(paste0(data_folder, filepath, ".csv"), na.strings=c(""," ","NA")) #Reading data
  
  #Number of factors, so it knows how many colors of the pal to use
  cat_length <- length(unique(data_plot[,group]))
  
  pal_chose <-pal_col #Palette
  
  if (chart_type == "multibar") { # MULTIPLE BAR PLOT
    plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y=round(data_plot[,yvar],1),
                           type = "bar", width = 650, height = 500, #size of plot
                           #Grouping variable for color and palette
                           color=as.factor(data_plot[,group]), colors = pal_chose[1:cat_length]) 
    
  } else if (chart_type == "onebar") { # SINGLE BAR PLOT
    plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y=round(data_plot[,yvar],1),
                           type = "bar", width = 650, height = 500,
                           marker = list(color = pal1color)) 
  
  } else if (chart_type == "barcompar") { # BAR PLOT WITH COMPARATOR LINE
    plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], width = 650, height = 500) %>% 
      #adding bar layer
      add_bars(y=round(data_plot[,yvar],1), name=xaxtitle, showlegend = FALSE, #hiding this layer from legend
               marker = list(color = pal1color)) %>% #changing bar color
      #Comparator line
      add_lines(y = data_plot[,comparator], name = compname, 
                line = list(color = '#FF0000')) %>% #changing line color
      layout(hovermode = 'false') # to get hover compare mode as default
    
  } else if (chart_type == "stackedbar") { # STACKED BAR PLOT
    
    
  } else if (chart_type == "oneline") { # SINGLE LINE PLOT
      plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y=round(data_plot[,yvar],1),
                             type = "scatter", mode='lines', width = 650, height = 500, 
                             line = list(color = pal1color)) #Grouping variable for color and palette

  } else if (chart_type == "multiline") { # MULTIPLE LINES PLOT
    # Custom layout
    xaxis_plot[["dtick"]] <- tick_freq
    legend_plot <-  list(x = 100, y = 0.5) 
    
    plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y = round(data_plot[,yvar],1),
                           type = 'scatter', mode = 'lines',
                           color=as.factor(data_plot[,group]), colors = pal_chose[1:cat_length],
                           width = 650, height = 500) %>% 
      # to get hover compare mode as default
      layout(hovermode = 'false', legend = legend_plot) 
    
  } else if (chart_type == "multiline_dashed") { # MULTIPLE LINES WITH PART DASHED
    # Custom layout
    xaxis_plot[["dtick"]] <- tick_freq
    legend_plot <-  list(x = 100, y = 0.5) 
    
    plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y = round(data_plot[,yvar],1),
                           color=as.factor(data_plot[,group]), colors = pal_chose[1:cat_length],
                           width = 650, height = 500) %>% 
      add_lines(y = round(data_plot[,yvar], 1)) %>% #normal line
      add_lines(y = round(data_plot[,yvar_dashed], 1), line = list(dash="dash"),
                showlegend = FALSE) %>% #dashed line
      # to get hover compare mode as default
      layout(hovermode = 'false', legend = legend_plot) 

  } else if (chart_type == "dualaxisline") { # DUAL AXIS LINE PLOT
    # Custom layout
    yaxis_plot[["range"]] <-c(minyrange, maxyrange)
    legend_plot <-  list(x = 100, y = 0.5) 
    
    
      plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y=data_plot[,yvar], 
                             type = "scatter", mode='lines', width = 650, height = 500, #size of plot
                             line = list(name = yname, color = pal1color)) %>% #Grouping variable for color and palette
        add_lines(data_plot[,xvar], y=data_plot[,yvar2], name = y2name, yaxis = "y2", line =list(color='#FF0000')) %>%
        layout(yaxis2 = list(title = yaxtitle2, rangemode="tozero", side = "right",
                             tickfont = list(color = "red"), overlaying = "y")) 
      
    } else if (chart_type == "areaplot") {
      plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y=round(data_plot[,yvar],1),
                             type = "scatter", mode = 'none', stackgroup = 'one', 
                             width = 650, height = 500, #size of plot
                             #Grouping variable for color and palette
                             color=as.factor(data_plot[,group]), colors = pal_chose[1:cat_length])
    }
  
  ###############################################.
  # Applying common layout 
  #If you need the plot ordered then it changes the layout
  if (order == TRUE | chart_type == "barcompar") { 
    xaxis_plot[["categoryorder"]] <- "array"
    xaxis_plot[["categoryarray"]] <-  sort(data_plot[,yvar])
  }
  
  plot_plotly %<>% 
    layout(title = title_plot, yaxis = yaxis_plot,xaxis = xaxis_plot,
           margin = margin_plot, images = scotpho_logo) %>%
    config(displaylogo = F, editable =F) # taking out plotly logo and collaborate button
  
  
  plot_plotly
  
  ###############################################.
  # Preparing HTML final file 
  
} #end of function


############################.
### Bar plot multi series function ----
multibar <- function (filepath, xvar, yvar, group, title,
                      sourc, xaxtitle, yaxtitle, pal_col, privacy = "public") {

  data_plot <- read.csv(paste0(data_folder, filepath, ".csv"), na.strings=c(""," ","NA")) #Reading data
  
  #Number of factors, so it knows how many colors of the pal to use
  cat_length <- length(unique(data_plot[,group]))
  
  pal_chose <-pal_col #Palette
  
  #Plotting
  plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y=round(data_plot[,yvar],1),
                         type = "bar", width = 650, height = 500, #size of plot
                         color=as.factor(data_plot[,group]), colors = pal_chose[1:cat_length]) %>% #Grouping variable for color and palette
    #Layout
    layout(title = list(text = paste(title, "<br>", "<sup><i>Source: ", sourc, sep=""), #title
                        font = list(size=15)), #title size
           annotations = list(), #It needs this because of a buggy behaviour
           yaxis = list(title = yaxtitle),
           xaxis = list(title = xaxtitle, tickangle = 270, tickfont =list(size=10)), #axis parameter
           margin=list( l = 70, r = 50, b = 150, t = 50, pad = 4 ), #margin-paddings
           images = scotpho_logo) %>%
    config(displaylogo = F, editable =F) # taking out plotly logo and collaborate button
  
  #api_create(x=plot_plotly, filename = filepath, sharing = privacy) #Upload to server
  plot_plotly
}

############################.
### Bar plot one series ----
onebar <- function (filepath, xvar, yvar, title, sourc, xaxtitle, yaxtitle, 
                    privacy = "public", order = FALSE) {

  data_plot <- read.csv(paste0(data_folder, filepath, ".csv"), na.strings=c(""," ","NA")) #Reading data
  
  #Plotting
  plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y=round(data_plot[,yvar],1),
                         type = "bar", width = 650, height = 500,
                         marker = list(color = pal1color)) %>% #size of plot
    #Layout
    layout(title = list(text = paste(title, "<br>", "<sup><i>Source: ", sourc, sep=""), #title
                        font = list(size=15)), #title size
           annotations = list(), #It needs this because of a buggy behaviour
           yaxis = list(title = yaxtitle),
           xaxis = list(title = xaxtitle, tickangle = 270, tickfont =list(size=10)), #axis parameter
           margin=list( l = 70, r = 50, b = 150, t = 50, pad = 4 ), #margin-paddings
           images = scotpho_logo) %>%
    config(displaylogo = F, editable =F) # taking out plotly logo and collaborate button
  
  if (order == TRUE) {
    plot_plotly <- plot_plotly %>% 
      layout(xaxis = list(title = xaxtitle, tickangle = 270, tickfont =list(size=10), #axis parameters
                          categoryorder="array", #order of plotting
                          categoryarray = -data_plot[,yvar]))
    
  } else if (order == FALSE) {
    plot_plotly <- plot_plotly %>% 
      layout(xaxis = list(title = xaxtitle, tickangle = 270, tickfont =list(size=10))) #axis parameters

  }
  
  api_create(x=plot_plotly, filename = filepath, sharing = privacy) #Upload to server
  
}

############################.
##Bar plot 1 series w/comparator----
barcompar <- function (filepath, xvar, yvar, comparator, compname,
                       title, sourc, xaxtitle, yaxtitle, privacy = "public")
{
  
  data_plot <- read.csv(paste0(data_folder, filepath, ".csv"), na.strings=c(""," ","NA")) #Reading data
  
  #Plotting
  plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], width = 650, height = 500) %>% #size of plot
    #adding bar layer
    add_bars(y=round(data_plot[,yvar],1), name=xaxtitle, showlegend = FALSE, #hiding this layer from legend
             marker = list(color = pal1color)) %>% #changing bar color
    #Comparator line
    add_trace(y = data_plot[,comparator], name = compname, type = 'scatter', mode = 'scatter',
              line = list(color = '#FF0000')) %>% #changing line color
    #Layout
    layout(title = list(text = paste(title, "<br>", "<sup><i>Source: ", sourc, sep=""), #title
                        font = list(size=15)), #title size
           annotations = list(), #It needs this because of a buggy behaviour
           yaxis = list(title = yaxtitle),
           xaxis = list(title = xaxtitle, tickangle = 270, tickfont =list(size=10), #axis parameters
                        categoryorder="array", #order of plotting
                        categoryarray = -data_plot[,yvar]),
           margin=list( l = 70, r = 50, b = 150, t = 50, pad = 4 ), #margin-paddings
           hovermode = 'false', # to get hover compare mode as default
           images = scotpho_logo) %>%
    config(displaylogo = F, editable =F) # taking out plotly logo and collaborate button
  
  plot_plotly
  # api_create(x=plot_plotly, filename = filepath, sharing = privacy) #Upload to server
  
}

############################.
##Stacked bar plot----
stackedbar <- function (filepath, xvar, yvar, group, title, sourc, pal_col, 
                        horizontal = F, xaxtitle, yaxtitle, privacy = "public") {
  
  data_plot <- read.csv(paste0(data_folder, filepath, ".csv"), na.strings=c(""," ","NA")) #Reading data

    #Number of factors, so it knows how many colors of the pal to use
  cat_length <- length(unique(data_plot[,group]))
  
  pal_chose <-pal_col #Palette
  
  #Plotting
  if (horizontal == T) { #Horizontal bar charts
    # Reversing factors so plot alphabetically from top to bottom
    levels(data_plot[ ,yvar]) <- sort(levels(data_plot[ ,yvar]), decreasing = TRUE)
    
    plot_plotly <- plot_ly(data=data_plot, x=round(data_plot[,xvar],1), y=data_plot[,yvar],
                           type = "bar", width = 650, height = 500, #size of plot
                           color=as.factor(data_plot[,group]), colors = pal_chose[1:cat_length], 
                           orientation = 'h') %>% 
      layout(barmode = 'stack', #stacked bars
             xaxis = list(title = xaxtitle, tickangle = 360, tickfont =list(size=10)), #axis parameters
             margin=list( l = 70, r = 0, b = 0, t = 80, pad = 4 ), #margin-paddings
             yaxis = list(title = yaxtitle, dtick =1))
  } else {
  plot_plotly <- plot_ly(data=data_plot, x=as.factor(data_plot[,xvar]), y=round(data_plot[,yvar],1),
                         type = "bar", width = 650, height = 500, #size of plot
                         color=as.factor(data_plot[,group]), colors = pal_chose[1:cat_length]) %>% 
    layout(barmode = 'stack', #stacked bars
           xaxis = list(title = xaxtitle, tickangle = 270, tickfont =list(size=10)), #axis parameters
           margin=list( l = 70, r = 50, b = 150, t = 50, pad = 4 ), #margin-paddings
           yaxis = list(title = yaxtitle))
  } 
  
  plot_plotly <- plot_plotly %>% #Grouping variable for color and palette
    #Layout
    layout(title = list(text = paste(title, "<br>", "<sup><i>Source: ", sourc, sep=""), #title
                        font = list(size=15)), #title size
           annotations = list(), #It needs this because of a buggy behaviour
           hovermode = 'false', # to get hover compare mode as default
           images = scotpho_logo) %>%
    config(displaylogo = F, editable =F) # taking out plotly logo and collaborate button
  
  api_create(x=plot_plotly, filename = filepath, sharing = privacy) #Upload to server
  
}

############################.
##Line plot 1 series----
oneline <- function (filepath, xvar, yvar, title, sourc, xaxtitle, yaxtitle,
                     labelsx, privacy = "public") {
  
  data_plot <- read.csv(paste0(data_folder, filepath, ".csv"), na.strings=c(""," ","NA")) #Reading data
  
  #Plotting
  plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y=round(data_plot[,yvar],1),
                         type = "scatter", mode='lines', width = 650, height = 500, #size of plot
                         line = list(color = pal1color)) %>% #Grouping variable for color and palette
    #Layout
    layout(title = list(text = paste(title, "<br>", "<sup><i>Source: ", sourc, sep=""), #title
                        font = list(size=15)), #title size
           annotations = list(), #It needs this because of a buggy behaviour
           yaxis = list(title = yaxtitle, rangemode="tozero"),
           xaxis = list(title = xaxtitle, tickangle = 270, tickfont =list(size=10)), #axis parameter
           margin=list( l = 70, r = 50, b = 150, t = 50, pad = 4 ), #margin-paddings
           images = scotpho_logo) %>%
    config(displaylogo = F, editable =F) # taking out plotly logo and collaborate button
  
  api_create(x=plot_plotly, filename = filepath, sharing = privacy) #Upload to server
  
}

############################.
##Line plot 2+ series----
#This macro should be modified once we get a more recent version of R (3.2.0 at the moment)
#Currently it uses a very hacky solution to allow the display of lines, it could be simplified massively
multiline <- function (filepath, xvar, yvar, group, title, tick_freq =1,
                       sourc, xaxtitle, yaxtitle, pal_col, privacy = "public") {
  
  data_plot <- read.csv(paste0(data_folder, filepath, ".csv"), na.strings=c(""," ","NA")) #Reading data

  #Number of factors, so it knows how many colors of the pal to use
  cat_length <- length(unique(data_plot[,group]))
  
  pal_chose <-pal_col #Palette
  
  #Plotting
  
  plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y = round(data_plot[,yvar],1),
                         type = 'scatter', mode = 'lines',
                         color=as.factor(data_plot[,group]), colors = pal_chose[1:cat_length],
                         width = 650, height = 500) %>%
    #Layout
    layout(title = list(text = paste(title, "<br>", "<sup><i>Source: ", sourc, sep=""), #title
                        font = list(size=15)), #title size
           annotations = list(), #It needs this because of a buggy behaviour
           yaxis = list(title = yaxtitle, rangemode="tozero"),
           xaxis = list(title = xaxtitle, tickangle = 270, tickfont =list(size=10), dtick = tick_freq), #axis parameter
           margin=list( l = 70, r = 50, b = 150, t = 50, pad = 4 ), #margin-paddings
           hovermode = 'false', # to get hover compare mode as default
           images = scotpho_logo,
           legend = list(x = 100, y = 0.5)) %>%   #anchoring the legend to the middle of the y-axis so that text appears halway down the graph
    config(displaylogo = F, editable =F) # taking out plotly logo and collaborate button
  
  htmlwidgets::saveWidget(partial_bundle(plot_plotly), paste0(sub('.*\\/', '', filepath), ".html"))
  
  # api_create(x=plot_plotly, filename = filepath, sharing = privacy) #Upload to server

}

############################.
##Line dual axis series----
dualaxisline <- function (filepath, xvar, yvar, yvar2, title, sourc, xaxtitle, 
                          yaxtitle, yaxtitle2, minyrange, maxyrange,
                          labelsx, yname, y2name, privacy = "public") {
  
  data_plot <- read.csv(paste0(data_folder, filepath, ".csv"), na.strings=c(""," ","NA")) #Reading data
  
  #Plotting
  plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y=data_plot[,yvar], 
                         type = "scatter", mode='lines', width = 650, height = 500, #size of plot
                         line = list(name = yname, color = pal1color)) %>% #Grouping variable for color and palette
    add_lines(data_plot[,xvar], y=data_plot[,yvar2], name = y2name, yaxis = "y2", line =list(color='#FF0000')) %>%
    #Layout
    layout(title = list(text = paste(title, "<br>", "<sup><i>Source: ", sourc, sep=""), #title
                        font = list(size=15)), #title size
           annotations = list(), #It needs this because of a buggy behaviour
           yaxis = list(title = yaxtitle, range = c(minyrange, maxyrange)),
           xaxis = list(title = xaxtitle, tickangle = 270, tickfont =list(size=10)), #axis parameter
           yaxis2 = list(title = yaxtitle2, rangemode="tozero", tickfont = list(color = "red"), overlaying = "y",side = "right"),
           margin=list( l = 70, r = 50, b = 150, t = 50, pad = 4 ), #margin-paddings
           images = scotpho_logo) %>%
    config(displaylogo = F, editable =F) # taking out plotly logo and collaborate button
  plot_plotly
  #api_create(x=plot_plotly, filename = filepath, sharing = privacy) #Upload to server
  
}

############################.
##Line plot 2+ series with part of the time period dashed ----
multiline_dashed <- function (filepath, xvar, yvar, yvar_dashed, group, title,
                              sourc, xaxtitle, yaxtitle, pal_col, privacy = "public") {

  data_plot <- read.csv(paste0(data_folder, filepath, ".csv"), na.strings=c(""," ","NA")) #Reading data
  
  #Number of factors, so it knows how many colors of the pal to use
  cat_length <- length(unique(data_plot[,group]))
  
  pal_chose <-pal_col #Palette
  
  #Plotting
  
  plot_plotly <-  plot_ly(data=data_plot, x=data_plot[,xvar], width = 650, height = 500,
                          color=as.factor(data_plot[,group]), colors = pal_chose[1:cat_length]) %>%
    add_lines(y = round(data_plot[,yvar], 1)) %>% #normal line
    add_lines(y = round(data_plot[,yvar_dashed], 1), line = list(dash="dash"),
              showlegend = FALSE) %>% #dashed line
    #Layout
    layout(title = list(text = paste(title, "<br>", "<sup><i>Source: ", sourc, sep=""), #title
                        font = list(size=15)), #title size
           annotations = list(), #It needs this because of a buggy behaviour
           yaxis = list(title = yaxtitle, rangemode="tozero"),
           xaxis = list(title = xaxtitle, tickangle = 270, tickfont =list(size=10), dtick = 1), #axis parameter
           margin=list( l = 70, r = 50, b = 150, t = 50, pad = 4 ), #margin-paddings
           hovermode = 'false', # to get hover compare mode as default
           images = scotpho_logo,
           legend = list(x = 100, y = 0.5)) %>%   #anchoring the legend to the middle of the y-axis so that text appears halway down the graph
    config(displaylogo = F, editable =F) # taking out plotly logo and collaborate button
  plot_plotly
  # api_create(x=plot_plotly, filename = filepath, sharing = privacy) #Upload to server
  
}


############################.
##Area plot with original values ----
areaplot <- function (filepath, xvar, yvar, group, title,
                      sourc, xaxtitle, yaxtitle, pal_col, privacy = "public")
{
  data_plot <- read.csv(paste0(data_folder, filepath, ".csv", sep=""), na.strings=c(""," ","NA")) #Reading data
  
  #Number of factors, so it knows how many colors of the pal to use
  cat_length <- length(unique(data_plot[,group]))
  
  pal_chose <-pal_col #Palette
  
  #Plotting
  plot_plotly <- plot_ly(data=data_plot, x=data_plot[,xvar], y=round(data_plot[,yvar],1),
                         type = "scatter", mode = 'none', stackgroup = 'one', width = 650, height = 500, #size of plot
                         color=as.factor(data_plot[,group]), colors = pal_chose[1:cat_length]) %>% #Grouping variable for color and palette
    #Layout
    layout(title = list(text = paste(title, "<br>", "<sup><i>Source: ", sourc, sep=""), #title
                        font = list(size=15)), #title size
           annotations = list(), #It needs this because of a buggy behaviour
           yaxis = list(title = yaxtitle),
           xaxis = list(title = xaxtitle, tickangle = 270, tickfont =list(size=10)), #axis parameter
           margin=list( l = 70, r = 50, b = 150, t = 50, pad = 4 ), #margin-paddings
           images = scotpho_logo) %>%
    config(displaylogo = F, editable =F) # taking out plotly logo and collaborate button
  plot_plotly
  # api_create(x=plot_plotly, filename = filepath, sharing = privacy) #Upload to server
  
}



##END