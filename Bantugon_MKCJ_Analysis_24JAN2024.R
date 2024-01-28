# ---------------------------------------------------------------------------------------------

# A1_Assignment_Data_Analyst_at_World_Bank 
# Bantugon, Michelle Kae Celine Jo-anne E.
# DAT-5323: Visualizing & Analyzing Data with R: Methods & Tools
# Dr. Priyanka Shrivastava
# January 24, 2024

# ---------------------------------------------------------------------------------------------

# Part I. Instantiating & Merging Datasets

# Getting and setting the directory to import the csv file
getwd()
setwd("C:\\Users\\joann\\Documents\\00 Hult 2023 2024\\Spring 1 2024 Courses\\R")

# Instantiating the Datset_IA dataset about fertility rate 
fertdf <-read.csv("Datset_IA.csv")

# Checking the head and tail of fertdf
head(fertdf)
tail(fertdf)

# Checking the structure of fertdf
str(fertdf)

# Checking the summary of fertdf
summary(fertdf)

# Checking if there are NA values of fertdf
fertdf[is.na(fertdf),]

# Checking the number of columns and row of fertdf
nrow(fertdf)
ncol(fertdf)

# Vector
#Execute below code to generate three new vectors
Country_Code <- c("ABW","AFG","AGO","ALB","ARE","ARG","ARM","ATG","AUS","AUT","AZE","BDI","BEL","BEN","BFA","BGD","BGR","BHR","BHS","BIH","BLR","BLZ","BOL","BRA","BRB","BRN","BTN","BWA","CAF","CAN","CHE","CHL","CHN","CIV","CMR","COG","COL","COM","CPV","CRI","CUB","CYP","CZE","DEU","DJI","DNK","DOM","DZA","ECU","EGY","ERI","ESP","EST","ETH","FIN","FJI","FRA","FSM","GAB","GBR","GEO","GHA","GIN","GMB","GNB","GNQ","GRC","GRD","GTM","GUM","GUY","HKG","HND","HRV","HTI","HUN","IDN","IND","IRL","IRN","IRQ","ISL","ITA","JAM","JOR","JPN","KAZ","KEN","KGZ","KHM","KIR","KOR","KWT","LAO","LBN","LBR","LBY","LCA","LKA","LSO","LTU","LUX","LVA","MAC","MAR","MDA","MDG","MDV","MEX","MKD","MLI","MLT","MMR","MNE","MNG","MOZ","MRT","MUS","MWI","MYS","NAM","NCL","NER","NGA","NIC","NLD","NOR","NPL","NZL","OMN","PAK","PAN","PER","PHL","PNG","POL","PRI","PRT","PRY","PYF","QAT","ROU","RUS","RWA","SAU","SDN","SEN","SGP","SLB","SLE","SLV","SOM","SSD","STP","SUR","SVK","SVN","SWE","SWZ","SYR","TCD","TGO","THA","TJK","TKM","TLS","TON","TTO","TUN","TUR","TZA","UGA","UKR","URY","USA","UZB","VCT","VEN","VIR","VNM","VUT","WSM","YEM","ZAF","COD","ZMB","ZWE")
Life_Expectancy_At_Birth_1960 <- c(65.5693658536586,32.328512195122,32.9848292682927,62.2543658536585,52.2432195121951,65.2155365853659,65.8634634146342,61.7827317073171,70.8170731707317,68.5856097560976,60.836243902439,41.2360487804878,69.7019512195122,37.2782682926829,34.4779024390244,45.8293170731707,69.2475609756098,52.0893658536585,62.7290487804878,60.2762195121951,67.7080975609756,59.9613658536585,42.1183170731707,54.2054634146342,60.7380487804878,62.5003658536585,32.3593658536585,50.5477317073171,36.4826341463415,71.1331707317073,71.3134146341463,57.4582926829268,43.4658048780488,36.8724146341463,41.523756097561,48.5816341463415,56.716756097561,41.4424390243903,48.8564146341463,60.5761951219512,63.9046585365854,69.5939268292683,70.3487804878049,69.3129512195122,44.0212682926829,72.1765853658537,51.8452682926829,46.1351219512195,53.215,48.0137073170732,37.3629024390244,69.1092682926829,67.9059756097561,38.4057073170732,68.819756097561,55.9584878048781,69.8682926829268,57.5865853658537,39.5701219512195,71.1268292682927,63.4318536585366,45.8314634146342,34.8863902439024,32.0422195121951,37.8404390243902,36.7330487804878,68.1639024390244,59.8159268292683,45.5316341463415,61.2263414634146,60.2787317073171,66.9997073170732,46.2883170731707,64.6086585365854,42.1000975609756,68.0031707317073,48.6403170731707,41.1719512195122,69.691756097561,44.945512195122,48.0306829268293,73.4286585365854,69.1239024390244,64.1918292682927,52.6852682926829,67.6660975609756,58.3675853658537,46.3624146341463,56.1280731707317,41.2320243902439,49.2159756097561,53.0013170731707,60.3479512195122,43.2044634146342,63.2801219512195,34.7831707317073,42.6411951219512,57.303756097561,59.7471463414634,46.5107073170732,69.8473170731707,68.4463902439024,69.7868292682927,64.6609268292683,48.4466341463415,61.8127804878049,39.9746829268293,37.2686341463415,57.0656341463415,60.6228048780488,28.2116097560976,67.6017804878049,42.7363902439024,63.7056097560976,48.3688048780488,35.0037073170732,43.4830975609756,58.7452195121951,37.7736341463415,59.4753414634146,46.8803902439024,58.6390243902439,35.5150487804878,37.1829512195122,46.9988292682927,73.3926829268293,73.549756097561,35.1708292682927,71.2365853658537,42.6670731707317,45.2904634146342,60.8817073170732,47.6915853658537,57.8119268292683,38.462243902439,67.6804878048781,68.7196097560976,62.8089268292683,63.7937073170732,56.3570487804878,61.2060731707317,65.6424390243903,66.0552926829268,42.2492926829268,45.6662682926829,48.1876341463415,38.206,65.6598292682927,49.3817073170732,30.3315365853659,49.9479268292683,36.9658780487805,31.6767073170732,50.4513658536585,59.6801219512195,69.9759268292683,68.9780487804878,73.0056097560976,44.2337804878049,52.768243902439,38.0161219512195,40.2728292682927,54.6993170731707,56.1535365853659,54.4586829268293,33.7271219512195,61.3645365853659,62.6575853658537,42.009756097561,45.3844146341463,43.6538780487805,43.9835609756098,68.2995365853659,67.8963902439025,69.7707317073171,58.8855365853659,57.7238780487805,59.2851219512195,63.7302195121951,59.0670243902439,46.4874878048781,49.969512195122,34.3638048780488,49.0362926829268,41.0180487804878,45.1098048780488,51.5424634146342)
Life_Expectancy_At_Birth_2020 <- c(75.3286585365854,60.0282682926829,51.8661707317073,77.537243902439,77.1956341463415,75.9860975609756,74.5613658536585,75.7786585365854,82.1975609756098,80.890243902439,70.6931463414634,56.2516097560976,80.3853658536585,59.3120243902439,58.2406341463415,71.245243902439,74.4658536585366,76.5459512195122,75.0735365853659,76.2769268292683,72.4707317073171,69.9820487804878,67.9134390243903,74.1224390243903,75.3339512195122,78.5466585365854,69.1029268292683,64.3608048780488,49.8798780487805,81.4011219512195,82.7487804878049,81.1979268292683,75.3530243902439,51.2084634146342,55.0418048780488,61.6663902439024,73.8097317073171,62.9321707317073,72.9723658536585,79.2252195121951,79.2563902439025,79.9497804878049,78.2780487804878,81.0439024390244,61.6864634146342,80.3024390243903,73.3199024390244,74.5689512195122,75.648512195122,70.9257804878049,63.1778780487805,82.4268292682927,76.4243902439025,63.4421951219512,80.8317073170732,69.9179268292683,81.9682926829268,68.9733902439024,63.8435853658537,80.9560975609756,74.079512195122,61.1420731707317,58.216487804878,59.9992682926829,54.8384146341464,57.2908292682927,80.6341463414634,73.1935609756098,71.4863902439024,78.872512195122,66.3100243902439,83.8317073170732,72.9428536585366,77.1268292682927,62.4011463414634,75.2682926829268,68.7046097560976,67.6604146341463,81.0439024390244,75.1259756097561,69.4716829268293,83.1170731707317,82.290243902439,73.4689268292683,73.9014146341463,83.3319512195122,70.45,60.9537804878049,70.2024390243902,67.7720487804878,65.7665853658537,81.459756097561,74.462756097561,65.687243902439,80.1288780487805,60.5203902439024,71.6576829268293,74.9127073170732,74.2402926829268,49.3314634146342,74.1634146341464,81.7975609756098,73.9804878048781,80.3391463414634,73.7090487804878,68.811512195122,64.6739024390244,76.6026097560976,76.5326585365854,75.1870487804878,57.5351951219512,80.7463414634146,65.6540975609756,74.7583658536585,69.0618048780488,54.641512195122,62.8027073170732,74.46,61.466,74.567512195122,64.3438780487805,77.1219512195122,60.8281463414634,52.4421463414634,74.514756097561,81.1048780487805,81.4512195121951,69.222,81.4073170731707,76.8410487804878,65.9636829268293,77.4192195121951,74.2838536585366,68.1315609756097,62.4491707317073,76.8487804878049,78.7111951219512,80.3731707317073,72.7991707317073,76.3340731707317,78.4184878048781,74.4634146341463,71.0731707317073,63.3948292682927,74.1776341463415,63.1670487804878,65.878756097561,82.3463414634146,67.7189268292683,50.3631219512195,72.4981463414634,55.0230243902439,55.2209024390244,66.259512195122,70.99,76.2609756097561,80.2780487804878,81.7048780487805,48.9379268292683,74.7157804878049,51.1914878048781,59.1323658536585,74.2469268292683,69.4001707317073,65.4565609756098,67.5223658536585,72.6403414634147,70.3052926829268,73.6463414634147,75.1759512195122,64.2918292682927,57.7676829268293,71.159512195122,76.8361951219512,78.8414634146341,68.2275853658537,72.8108780487805,74.0744146341464,79.6243902439024,75.756487804878,71.669243902439,73.2503902439024,63.583512195122,56.7365853658537,58.2719268292683,59.2373658536585,55.633)

# Combining the three vectors in a dataframe
lifedf <- data.frame(Country_Code, Life_Expectancy_At_Birth_1960, Life_Expectancy_At_Birth_2020)

# Checking the head and tail of lifedf
head(lifedf)
tail(lifedf)

# Checking the structure of lifedf
str(lifedf)

# Checking the summary of fertdf
summary(lifedf)

# Checking if there are NA values of fertdf
lifedf[is.na(lifedf),]

# Checking the number of columns and row of fertdf
nrow(lifedf)
ncol(lifedf)

# Rounding to three decimal places the life expectancy values
# To have same precision with fertdf before merging
lifedf$Life_Expectancy_At_Birth_1960 <-round(lifedf$Life_Expectancy_At_Birth_1960, digits = 3)
lifedf$Life_Expectancy_At_Birth_2020 <-round(lifedf$Life_Expectancy_At_Birth_2020, digits = 3)

# Checking the head and tail of lifedf
head(lifedf)
tail(lifedf)

# Before merging
# We will use gather() from tidyr to combine Life_Expectancy_At_Birth of both 1960 and 2020 in single column
?tidyr::gather

# Using gather function and assigning to a new dataframe
lifedf_new<-tidyr::gather(lifedf, key = "Year", value = "Life_Expectancy", -Country_Code)

# Checking the head and tail of lifedf_new
head(lifedf_new)
tail(lifedf_new)

# Renaming the columns of lifedf_new similar to fertdf
colnames(lifedf_new) <-c("Country.Code", "Year", "Life.Expectancy")

# removing Life_Expectancy_At_Birth_
lifedf_new$Year <- gsub("Life_Expectancy_At_Birth_","",lifedf_new$Year)

# Checking the structure of lifedf_new and fertdf
str(lifedf_new)
str(fertdf)

# Converting Year in lifedf_new to integer to have same data type as fertdf
lifedf_new$Year <- as.integer(lifedf_new$Year)

# Rehecking the structure of lifedf_new and comparing with fertdf
str(lifedf_new)
str(fertdf)

# Checking the number of rows in both dataframes
# The dataframes have similar number of rows
nrow(lifedf_new)
nrow(fertdf)

# Checking if there are NA values of lifedf_new
lifedf_new[is.na(lifedf_new),]

# Checking the number of columns and row of fertdf
nrow(lifedf_new)
ncol(lifedf_new)

# Merging two data sets
merge_df <- merge(fertdf,lifedf_new,by.x= c("Country.Code", "Year"), by.y= c("Country.Code","Year"))

# Checking the head of mergedf
head(merge_df)
tail(merge_df)

# Checking the structure of merge_df
str(merge_df)

# Checking the summary of merge_df
summary(merge_df)

# Checking if there are NA values of merge_df
merge_df[is.na(merge_df),]

# Checking the number of columns and row of merge_df
nrow(merge_df)
ncol(merge_df)

# ---------------------------------------------------------------------------------------------

# Part II. Data Visualization

# Creating scatterplot using ggplot
library(ggplot2)
# Base layer
baseplt <- ggplot(data = merge_df, aes(    x = Fertility.Rate, y = Life.Expectancy,
                                       color = Region,      size = Fertility.Rate))
# Scatter plot with faceting
baseplt + geom_point(alpha = 0.9, aes(fill=Region) ,shape = 21, color = "black") +
  facet_grid(.~Year)

# Adjusting the x and y range
baseplt + geom_point(alpha = 0.9, aes(fill=Region) ,shape = 21, color = "black") +
  facet_grid(.~Year) + 
  coord_cartesian(xlim=c(0,9)) + 
  coord_cartesian(ylim=c(0,85))

# Renaming labels and adding title
# Graph 1
baseplt + geom_point(alpha = 0.9, aes(fill=Region) ,shape = 21, color = "black") +
  facet_grid(.~Year) + 
  coord_cartesian(xlim=c(0,9)) + 
  coord_cartesian(ylim=c(0,85)) +
  xlab("Fertility Rate (children per woman)") +
  ylab("Life Expectancy (years)") +
  ggtitle("Fertility Rate vs Life Expectancy between 1960 and 2020") +
  theme(plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
  legend.position = "bottom") +
  labs(size = "Fertility Rate") # Renaming the legend for Fertility.Rate

# Faceting by Year and Region
# Moving the legend to bottom for more space
# Graph 2
baseplt + geom_point(alpha = 0.9, aes(fill=Region) ,shape = 21, color = "black") +
  facet_grid(Year~Region) + 
  coord_cartesian(xlim=c(0,9)) + 
  coord_cartesian(ylim=c(0,85)) +
  xlab("Fertility Rate (children per woman)") +
  ylab("Life Expectancy (years)") +
  ggtitle("Fertility Rate vs Life Expectancy between 1960 and 2020") +
  theme(plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
  legend.position = "bottom") + 
  labs(size = "Fertility Rate") # Renaming the legend for Fertility.Rate

# Calculating the median life expectancy

# Filter data for the year 1960 
data_1960 <- merge_df[merge_df$Year == 1960, ]
head(data_1960)

# Calculate median life expectancy for 1960
median_1960 <- median(data_1960$Life.Expectancy, na.rm = TRUE)
median_1960

# Calculate mean life expectancy for 1960
mean_1960 <- mean(data_1960$Life.Expectancy, na.rm = TRUE)
mean_1960

# Filter data for the year 2020
data_2020 <- merge_df[merge_df$Year == 2020, ]
head(data_2020)

# Calculate median life expectancy for 2020
median_2020 <- median(data_2020$Life.Expectancy, na.rm = TRUE)
median_2020

# Creating scatterplot using ggplot with median value for Life Expectancy
# Base layer 2 using median_1960 for year 1960
baseplt2 <- ggplot(data = data_1960, aes(    x = Fertility.Rate, y = Life.Expectancy,
                                           color = Region,    size = Fertility.Rate))
# Graph 3
plt_1960 <- baseplt2 + geom_point(alpha = 0.9, aes(fill=Region) ,shape = 21, color = "black") +
  geom_hline(yintercept = median_1960, linetype = "dashed", color = "red", size = 0.5) +
  facet_grid(.~Region) + 
  coord_cartesian(xlim=c(0,9)) + 
  coord_cartesian(ylim=c(0,85)) +
  xlab("Fertility Rate (children per woman)") +
  ylab("Life Expectancy (years)") +
  labs(size = "Fertility Rate") + # Renaming the legend for Fertility.Rate
  ggtitle("Fertility Rate vs Life Expectancy in 1960") +
  theme(plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
  legend.position = "bottom",
  legend.text = element_text(size = 8.5),
  legend.title = element_text(size = 10))

# Base layer 2 using median_2020 for year 2020
baseplt3 <- ggplot(data = data_2020, aes(    x = Fertility.Rate, y = Life.Expectancy,
                                             color = Region,  size = Fertility.Rate))

# Graph 4
plt_2020 <- baseplt3 + geom_point(alpha = 0.9, aes(fill=Region) ,shape = 21, color = "black") +
  geom_hline(yintercept = median_2020, linetype = "dashed", color = "red", size = 0.5) +
  facet_grid(.~Region) + 
  coord_cartesian(xlim=c(0,9)) + 
  coord_cartesian(ylim=c(0,85)) +
  xlab("Fertility Rate (children per woman)") +
  ylab("Life Expectancy (years)") +
  labs(size = "Fertility Rate") + # Renaming the legend for Fertility.Rate 
  ggtitle("Fertility Rate vs Life Expectancy in 2020") +
  theme(plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
  legend.position = "bottom",
  legend.text = element_text(size = 8.5),
  legend.title = element_text(size = 10))


# Combining the two plots using grid.arrange from the gridExtra package
install.packages("gridExtra")
library(gridExtra)
# Displaying the plot of 1960 and 2020 side by side with median

# Graph 5
merge_plt <- grid.arrange(plt_1960, plt_2020, ncol = 2)
# ---------------------------------------------------------------------------------------------

# Part III. Analysis & Insights

# Introduction
# Definition of Terms

# Life Expectancy
# Life expectancy is defined as a statistical measure of how long a person may live, based
# on demographic factors such as gender, current age, and most importantly the year of their
# birth. The most commonly used measure of life expectancy is life expectancy at birth or at
# age zero (Statista, 2023). 

# Total Fertility Rate
# Total fertility rate represents the number of children that would be born to a woman if she 
# were to live to the end of her childbearing years and bear children in accordance with 
# age-specific fertility rates of the specified year (United Nations Population Division, 2022).

# Analysis of Fertility Rate versus Life Expectancy between 1960 and 2020
# Graph 1

# Graph 1 illustrates the global trend in fertility rate and life expectancy across regions 
# between 1960 and 2020. In 1960, an increase in fertility rate corresponds to a decrease in life 
# expectancy. Conversely, in 2020, a decrease in fertility rate aligns with an increase in 
# life expectancy, indicating a negative correlation.

# Graph 2

# Graph 2 compares global fertility rates and life expectancy in 1960 and 2020. Europe 
# consistently has the lowest fertility rate, concentrated between 1 to 2 in 2020, followed 
# by America. Africa shows the lowest life expectancy in both years. Data variability is 
# higher in 1960, suggesting regional variations in the correlation between variables, 
# possibly influenced by factors beyond fertility rate.

# Graph 3 and 4
# Graph 3 and 4 are utilized to combine plots for 1960 and 2020, showcasing median life 
# expectancy for both years in a side-by-side display.

# Graph 5
# Graph 5 displays the rise in median life expectancy from 54.699 years in 1960 to 73.25 years
# in 2020, as indicated by the red dashed line in both plots. In 1960, only Europe surpassed 
# the median line, followed by America with over half of its data above the median. Africa 
# consistently remained below the median. In 2020, despite Asia having less than half of its 
# data above the median, it boasts the highest life expectancy among regions. Over 90% of 
# Europeans now exceed the median, and the Middle East has seen an increase since 1960. 
# However, Africa still lags below the median, with marginal improvement.

# Conclusion
# To establish a statistically significant negative correlation, additional data collection 
# is essential. Exploring factors influencing both fertility and life expectancy, such as 
# Gross Domestic Product(GDP), age, sex, income, population, healthcare, education, and 
# economic development, will contribute to a more comprehensive analysis. It's crucial to 
# note that negative correlations indicate a statistical tendency rather than causation.

# ---------------------------------------------------------------------------------------------

# Part IV. References

# Ardiles, F. (November 2019). Correlation between Life Expectancy and Fertility.
#     https://vox.lacea.org/?q=blog/life_expectancy_fertility

# Dyvik, E.H. (2024). Average life expectancy at birth in 2023, by continent and gender.
#     https://www.statista.com/statistics/270861/life-expectancy-by-continent/

# Hebbali, A. (June 2021). Data Visualization with ggplot2.
#     https://viz-ggplot2.rsquaredacademy.com/

# United Nations Population Division. (2022). Metadata Glossary.
#     https://databank.worldbank.org/metadataglossary/millennium-development-goals/series/SP.DYN.TFRT.IN

