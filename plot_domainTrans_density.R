setwd("C:/Users/18013/Desktop/研究生/果蝇翻译组/Figure+table/Supple/domian_transcript")
embryo_cyto_domian_trans<-read.table(file = "embryo_cyto_domainTrans.txt",header = T,row.names=2,sep="\t")
embryo_rib_domian_trans<-read.table(file = "embryo_rib_domainTrans.txt",header = T,row.names=2,sep="\t")
s2_cyto_domian_trans<-read.table(file = "s2_rib_domainTrans.txt",header = T,row.names=2,sep="\t")
s2_rib_domian_trans<-read.table(file = "s2_cyto_domainTrans.txt",header = T,row.names=2,sep="\t")


embryo_cyto_domian_trans$Max<-log10(embryo_cyto_domian_trans$Max_fpkm)
embryo_cyto_domian_trans$Minor<-log10(embryo_cyto_domian_trans$Max_fpkm)-1

plot(density(embryo_cyto_domian_trans$Max),xlim=c(-2,5))
lines(density(embryo_cyto_domian_trans$Minor)$x,density(embryo_cyto_domian_trans$Minor)$y,col=2)

embryo_rib_domian_trans$Max<-log10(embryo_rib_domian_trans$Max_fpkm)
s2_cyto_domian_trans$Max<-log10(s2_cyto_domian_trans$Max_fpkm)
s2_rib_domian_trans$Max<-log10(s2_rib_domian_trans$Max_fpkm)

head(embryo_cyto_domian_trans)
head(embryo_rib_domian_trans)


library(ggplot2)
year<-c(1993,1998,2003,2008)
Res<-c(0.0227,0.0198,0.0155,0.0147)
COPD<-c(0.0138,0.0125,0.0075,0.0069)

#R语言基础包作图
plot(year,Res,col=2,type="b",ylim=c(0.005,0.035),xlab = "Year",ylab ="Morbidity")
lines(year,COPD,col=3,type="b")
legend("topright",pch=c(15,15),legend=c("Respiratory","COPD"),col=c(2,3),bty="n")
