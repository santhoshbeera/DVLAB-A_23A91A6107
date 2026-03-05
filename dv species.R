#Load the Data
data(iris)
#Understand the Data
str(iris)
View(iris)
class(iris)
?iris
#Basic box plot

boxplot(iris$Sepal.Length)

boxplot(iris$Sepal.Length,
        main = "Box plot for Sepal Length",
        ylab = "Sepal_length",
        col = "skyblue")

boxplot(Sepal.Length ~ Species,
        data = iris,
        main = "Sepal Length By Species",
        xlab = "Species",
        ylab = "Sepal Length",
        col = c("pink","green","skyblue"))

boxplot(iris[,1:4],
        main = "Multi Variable Box Plot",
        col = c("pink","green","skyblue","orange"))

library(ggplot2)

ggplot(iris,
       aes(x=Species, y=Sepal.Length))+
  geom_boxplot()

ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) + 
  geom_boxplot()
theme_minimal()

ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) + 
  geom_boxplot() + 
  scale_fill_manual(
    values = c(
      "setosa" = "red",
      "versicolor" = "steelblue",
      "virginica" = "green"
    )
  ) + 
  theme_minimal()