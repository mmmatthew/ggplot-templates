library(ggplot2)

theme_pub_light <- function(){
  light_theme = theme(plot.background = element_rect(size = 1, color = "transparent", fill = "transparent"),
                      text=element_text(size = 8, family = "sans", color = "black"),
                      panel.background = element_rect(fill = "white", color = "black"),
                      panel.grid.major.y = element_line(color = "light grey"),
                      panel.grid.minor.y = element_blank(),
                      panel.grid.major.x = element_blank(),
                      panel.grid.minor.x = element_blank(),
                      
                      axis.text = element_text(color = 'black'),
                      axis.ticks = element_line(colour = 'black'),
                      
                      legend.title = element_blank(),
                      legend.title.align = 1,
                      legend.key = element_rect(fill='transparent'),
                      legend.key.height = unit(0.7,'line'),
                      legend.background = element_rect(color = 'transparent'),
                      legend.box.margin = unit(c(0.2,0.2,0.2,0.2), "cm"),
                      legend.position = c(1,1),
                      legend.justification = c(1,1))
  return(light_theme)
}