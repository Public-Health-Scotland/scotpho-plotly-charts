#This syntax defines palettes, plot parameters and plotting functions to create
#charts using plotly and uploading to their server.
#Read more about this in the Plotly chart SOP.
#Jaime Villacampa August 17

############################.
##Packages----
############################.
library (tidyverse)
library(plotly) #version 4.7

############################.
##Plot and upload parameters----
############################.
#Login credentials to ScotPHO plotly.
if (sessionInfo()$platform %in% c("x86_64-redhat-linux-gnu (64-bit)")) {
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
### Plot functions----
############################.
############################.
### Bar plot multi series function ----
multibar <- function (filepath, xvar, yvar, group, title,
                      sourc, xaxtitle, yaxtitle, pal_col, privacy = "public")
{

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
  
  api_create(x=plot_plotly, filename = filepath, sharing = privacy) #Upload to server
  
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
  
  api_create(x=plot_plotly, filename = filepath, sharing = privacy) #Upload to server
  
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
multiline <- function (filepath, xvar, yvar, group, title,
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
           xaxis = list(title = xaxtitle, tickangle = 270, tickfont =list(size=10), dtick = 1), #axis parameter
           margin=list( l = 70, r = 50, b = 150, t = 50, pad = 4 ), #margin-paddings
           hovermode = 'false', # to get hover compare mode as default
           images = scotpho_logo,
           legend = list(x = 100, y = 0.5)) %>%   #anchoring the legend to the middle of the y-axis so that text appears halway down the graph
    config(displaylogo = F, editable =F) # taking out plotly logo and collaborate button
  
  api_create(x=plot_plotly, filename = filepath, sharing = privacy) #Upload to server
  
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
  
  api_create(x=plot_plotly, filename = filepath, sharing = privacy) #Upload to server
  
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
  
  api_create(x=plot_plotly, filename = filepath, sharing = privacy) #Upload to server
  
}


#TO DO 
# https://www.r-bloggers.com/how-to-add-trend-lines-in-r-using-plotly/
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
  
  api_create(x=plot_plotly, filename = filepath, sharing = privacy) #Upload to server
  
}



##END