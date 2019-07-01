#cluster analysis
#process of grouping observations of similar kinds into smaller groups within the larger population
data<-iris
#remove unnecessary column
data$Species<-NULL
k=kmeans(data,3)
k
table(k$cluster,iris$Species)
library(ggplot2)
ggplot(iris,aes(Petal.Length,Petal.Width,color = Species))+geom_point()

