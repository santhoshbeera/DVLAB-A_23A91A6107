#load the Dataset
data(iris)

#inspect the Data
?iris
head(iris,3)
str(iris)
class(iris)

#Very Basic Bar Chart
#Count of each Species
#To see the data in the coloumn "Species"
iris$Species
View(iris)
#Plotiris# Plotting a bar Chart
barplot(
  table(iris$Species)
)

#labeled Bar Chart
barplot(
  table(iris$Species),
  main = "Count of Tris Species",
  xlab = "Species",
  ylab = "Number of Items",
  col = "steelblue"
)
#Adds title, axis labels, and color

#Bar Chart from Aggregated Data
#Using Mean Length Per Species
mean_sepal <- tapply(iris$Sepal.Length, iris$Species, mean)
mean_sepal

barplot(
  mean_sepal,
  main = "orange",
  main = "Average SWepal Length by Species",
  xlab = "Species",
  ylab = "Mean Sepal Length"
)

#Grouped Bar Chart 
#Compare Sepal & Petal Length (mean)
group_means <- rbind(
  Sepal = tapply(iris$Sepal.length, iris$Species, mean),
  Petal = tapply(iris$Sepal.length, iris$Species, mean),
)
group_means

#Grouped (Clustered) bar chart
barplot(
  group_means,
  beside = TRUE,
  col = c("skyblue","pink"),
  legend.text = TRUE,
  main = "Clustered Bar Chart: Sepal vs Petal Length"
)

#Grouped (Stacked) bar Chart
barplot(
  group_means,
  beside = FALSE,
  col = c("skyblue", "pink"),
  legend.text = True,
  main = "Stacked Bar Chart: Special & Petal Length"
)1