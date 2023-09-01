dados<-read.delim(file="mah83g.txt",header = T,row.names=1, sep="\t")
#dados

#summary(dados)
mat<-as.matrix(dados)
library(ggdendro)
tcluster<-dendro_data(hclust(as.dist(mat),"ave"))
#max(mat)
library(ggplot2)
ggdendrogram(tcluster, rotate = T, labels = T, size = 2) 

#devtools::install_github("NicolasH2/ggdendroplot")

library(ggdendroplot)
hc <- hclust(as.dist(mat),"ave")
ggplot() + geom_dendro(hc, dendrocut = 1)
