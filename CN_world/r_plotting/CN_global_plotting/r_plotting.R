# Read the data with (readxl)
library(readxl)
readxl::excel_sheets("h:/Learning/Coding/other/work_tasks/CN_world/r_plotting/figures.xlsx")

fig5 <- read_excel(path = "h:/Learning/Coding/other/work_tasks/CN_world/r_plotting/figures.xlsx", sheet = "fig.5")
fig6 <- read_excel(path = "h:/Learning/Coding/other/work_tasks/CN_world/r_plotting/figures.xlsx", sheet = "fig.6")
fig9 <- read_excel(path = "h:/Learning/Coding/other/work_tasks/CN_world/r_plotting/figures.xlsx", sheet = "fig.9")
fig10 <- read_excel(path = "h:/Learning/Coding/other/work_tasks/CN_world/r_plotting/figures.xlsx", sheet = "fig.10")
sfig1 <- read_excel(path = "h:/Learning/Coding/other/work_tasks/CN_world/r_plotting/figures.xlsx", sheet = "sfig.1")
sfig2 <- read_excel(path = "h:/Learning/Coding/other/work_tasks/CN_world/r_plotting/figures.xlsx", sheet = "sfig.2")

# Load the vioplot library
library(vioplot)
#medians <- reorder(fig5$Climate, fig6$`Ln(-betaC)`, median)

#vioplot(fig5$`Ln(-betaC)` ~ medians, col = 4:(length(levels(fig5$Climate)) + 1), 
#        xlab = "Climate types", ylab = "Weight", las = 1)
#par(mfrow = c(1, 1))


# Libraries
library(ggplot2)
library(dplyr)
library(hrbrthemes)
library(viridis)

# create a dataset
data <- sfig1

# sample size
sample_size = data %>% group_by(Ecosystem) %>% summarize(num=n())
#group_by(Climate) %>% summarize(num=n())

# Plot
data %>%
  left_join(sample_size) %>%
  mutate(myaxis = paste0(Ecosystem, "\n", "n=", num)) %>%
  ggplot(aes(x=myaxis, y=data$`Ln(-betaC)`, fill=Ecosystem)) + #add data
  geom_violin(width=1, adjust = 0.75) + #set violin
  geom_boxplot(width=0.07, fill='darkgrey', color="white",
               outlier.colour = "black", outlier.shape = 16, notch = TRUE) + #you can add notch = TRUE
  #scale_fill_viridis(discrete = TRUE) + #fill color
  #scale_fill_manual(values=c("#999999", "#E69F00", "#56B4E9", "#10B4E0")) +
  scale_fill_brewer(palette="Set2") +
  theme_ipsum() + #white theme
  theme(
    axis.text.x = element_text(size=15),
    axis.text.y = element_text(size=15),
    legend.position="none",
    axis.title.x = element_text(size=18, hjust = 0.6, margin = margin(r = 10)),
    axis.title.y = element_text(size=18, hjust = 0.6, margin = margin(r = 10))
  ) +
  xlab("") +
  ylab("Ln(-βс)")


#ggplot(data=fig6, aes(x=Climate, y=Ln(-betaC)) + geom_boxplot())
#axis.line = element_line(colour = "darkgrey"),


#add in 'theme':
#axis.ticks.x = element_line(size=18, hjust = 0.6, margin = margin(r = 10)),
#plot.title = element_text(size=18, hjust = 0.5),
#
#ggtitle("Box plot for Ln (-βс) grouping by climates") +
#
#stat_summary(fun.y=mean, geom="point", shape=20, size=2, color="red", fill="red") + #add mean
#boxplot(data$`Ln(-betaN)` ~ data$Climate , col=rgb(0.3,0.5,0.4,0.6) , ylab="value" , #box plotting
#        xlab="names in desired order") 
#geom_jitter(show.legend = FALSE, width =  0.25, shape = 21, color = "black") + #add dots to the graph
#geom_dotplot(binaxis = "y", binwidth = 0.08, stackdir = "center", show.legend = FALSE) + #center dots