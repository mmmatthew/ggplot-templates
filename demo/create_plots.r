setwd("C:/Users/Matthew/Dropbox/PhD/7_Side_Projects/16_raycast/Paper/Drafts/Figures/plots/")

# Import libraries and functions
library(ggplot2)
library(reshape2)
library(readr)
source('code/defaults.R')

# Import data
dataset_pt_series <- read_delim("demo/data/point-series.csv", ";", escape_double = FALSE, trim_ws = TRUE)
# Reshape data
dataset_pt_series <- melt(dataset_pt_series, id.vars = c('Minimum Neighbours'))

pt_series <- ggplot(dataset_pt_series, aes(y = value, x = `Minimum Neighbours`)) +
  geom_point(aes(shape = variable, color = variable), size = 2) +
  scale_shape_manual(values = c(1, 8, 18, 16)) +
  scale_color_manual(values = c('royalblue3', 'black', 'orangered1', 'orange1')) +
  scale_x_continuous(name='Minimum number of neighbors', breaks = seq(0,7,1)) + 
  scale_y_continuous(name = 'Detection rate', labels = scales::percent, breaks = seq(0,1,0.1), limits = (c(0,1))) +
  theme_pub_light()
pt_series

# Save plot
ggsave(filename = "point-series.png", path = "demo/plots", plot = pt_series, 
       width = 85, height = 65, units = 'mm', dpi = 600)

