#load/install
install.packages("ts")
install.packages("as.Date")
install.packages("as.POSIXct")
install.packages("tseries")
install.packages("zoo")
install.packages("Rtools")
install.packages("quantmod")
install.packages("pdfetch")
library(pdfetch)
library(xts)
library(quantmod)
library(zoo)
library(tidyverse)
library(tinytex)
library(ggplot2)
install.packages("ts")
install.packages("as.Date")
install.packages("as.POSIXct")
install.packages("tseries")
#pullinStockData
BB0 <- read.csv("BB0.csv")
AMC0 <- read.csv("AMC0.csv")
NIO0 <- read.csv("NIO0.csv")
BABA0 <- read.csv("BABA0.csv")
MSFT0 <- read.csv("MSFT0.csv")
ADBE0 <- read.csv("ADBE0.csv")
MSFTn1 <- tseries::get.hist.quote(instrument="MSFT", start= "2023-10-31",  end="2023-11-07", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
BBn1 <- tseries::get.hist.quote(instrument="BB", start= "2023-10-31",  end="2023-11-07", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
NIOn1 <- tseries::get.hist.quote(instrument="NIO", start= "2023-10-31",  end="2023-11-07", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
ADBEn1 <- tseries::get.hist.quote(instrument="ADBE", start= "2023-10-31",  end="2023-11-07", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
BABAn1 <- tseries::get.hist.quote(instrument="BABA", start= "2023-10-31",  end="2023-11-07", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
AMCn1 <- tseries::get.hist.quote(instrument="AMC", start= "2023-10-31",  end="2023-11-07", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
MSFTn2 <- tseries::get.hist.quote(instrument="MSFT", start= "2023-11-08",  end="2023-11-14", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
BBn2 <- tseries::get.hist.quote(instrument="BB", start= "2023-11-08",  end="2023-11-14", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
NIOn2 <- tseries::get.hist.quote(instrument="NIO", start= "2023-11-08",  end="2023-11-14", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
ADBEn2 <- tseries::get.hist.quote(instrument="ADBE", start= "2023-11-08",  end="2023-11-14", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
BABAn2 <- tseries::get.hist.quote(instrument="BABA", start= "2023-11-08",  end="2023-11-14", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
AMCn2 <- tseries::get.hist.quote(instrument="AMC", start= "2023-11-08",  end="2023-11-14", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
MSFTn3 <- tseries::get.hist.quote(instrument="MSFT", start= "2023-11-15",  end="2023-11-21", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
BABAn3 <- tseries::get.hist.quote(instrument="BABA", start= "2023-11-15",  end="2023-11-21", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
AMCn3 <- tseries::get.hist.quote(instrument="AMC", start= "2023-11-15",  end="2023-11-21", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
BBn3 <- tseries::get.hist.quote(instrument="BB", start= "2023-11-15",  end="2023-11-21", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
NIOn3 <- tseries::get.hist.quote(instrument="NIO", start= "2023-11-15",  end="2023-11-21", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
ADBEn3 <- tseries::get.hist.quote(instrument="ADBE", start= "2023-11-15",  end="2023-11-21", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
MSFTn4 <- tseries::get.hist.quote(instrument="MSFT", start= "2023-11-22",  end="2023-11-29", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
BABAn4 <- tseries::get.hist.quote(instrument="BABA", start= "2023-11-22",  end="2023-11-29", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
AMCn4 <- tseries::get.hist.quote(instrument="AMC", start= "2023-11-22",  end="2023-11-29", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
BBn4 <- tseries::get.hist.quote(instrument="BB", start= "2023-11-22",  end="2023-11-29", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
NIOn4 <- tseries::get.hist.quote(instrument="NIO", start= "2023-11-22",  end="2023-11-29", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
ADBEn4 <- tseries::get.hist.quote(instrument="ADBE", start= "2023-11-22",  end="2023-11-29", quote=c("Open", "High", "Low", "Close", "Volume"), provider= "yahoo", compression="d", retclass="zoo")
AlNIO <- c(NIOn1$Close, NIOn2$Close, NIOn3$Close, NIOn4$Close)
AlBB <- c(BBn1$Close,BBn2$Close,BBn3$Close,BBn4$Close)
AlAMC <- c(AMCn1$Close,AMCn2$Close,AMCn3$Close,AMCn4$Close)
AlADBE <- c(ADBEn1$Close,ADBEn2$Close,ADBEn3$Close,ADBEn4$Close)
AlBABA <- c(BABAn1$Close,BABAn2$Close,BABAn3$Close,BABAn4$Close)
AlMSFT <- c(MSFTn1$Close,MSFTn2$Close,MSFTn3$Close,MSFTn4$Close)
AlNIOa <- c(NIOn1, NIOn2, NIOn3, NIOn4)
AlBBa <- c(BBn1,BBn2,BBn3,BBn4)
AlAMCa <- c(AMCn1,AMCn2,AMCn3,AMCn4)
AlADBEa <- c(ADBEn1,ADBEn2,ADBEn3,ADBEn4)
AlBABAa <- c(BABAn1,BABAn2,BABAn3,BABAn4)
AlMSFTa <- c(MSFTn1,MSFTn2,MSFTn3,MSFTn4)
AlMSFT2a <- c(MSFTn1,MSFTn2)
AlBABA2a <- c(BABAn1,BABAn2) 
AlNIO2a <- c(NIOn1, NIOn2)
AlBB2a <- c(BBn1,BBn2)
AlAMC2a <- c(AMCn1,AMCn2)
AlADBE2a <- c(ADBEn1,ADBEn2)
view(BB0)
#making the frames
BBDateLSO <- as.Date(BB0$DATE, format="%m/%d/%Y")
AMC01 <- AMC0[1:10, 1:2]
BB01 <- BB0[1:10, 1:2]
BABA01 <- BABA0[1:10, 1:2]
BBAMCNIO = data.frame(c(AlNIOa$Close),
                      c(AlBBa$Close),
                      c(AlAMCa$Close))
BBLSO1 = data.frame(c(BBDateLSO),
                  c(BB0$LSO))
BBLSO1 <- BB0[, colSums(is.na(BB0)) == 0]
view(BBLSO1)
ggplot <- geom_pointdata=BBDateLSO(mapping=aes(x=Date, y=LSO))
view(BBDateLSO)
class(tst1[,1])
par(mfrow=c(2,2))
plot(AlMSFTa$Close, pch = 1)
plot(AlBABAa$Close, pch = 2)
plot(AlBABAa$Close, pch =3)
plot(AlBBa$Close, pch =4)
plot(AlNIOa$Close, pch = 5)
plot(AlAMCa$Close, pch=6)
library("GGally")
ggpairs(ADBEMSFT, columns = 1:4, title="help")

ADBEMSFT = data.frame(c(ADBEn1$Open),
                      c(MSFTn1$Open)
)
print(ADBEMSFT)
plot(ADBEMSFT)

plot(AlMSFTa)
library(reshape)
install.packages("gridExtra")
library(gridExtra)
library(grid)
library(lattice)

par(mfrow=c(3,2))
library(scales)
print(x)
plot1 <- data.frame(LSO =c('x','y'), myX= c(BB01$LSO))
BBLSO <- ggplot(data=BB01) +
  geom_point(mapping=aes(x=DATE, y=LSO))
BBLSO <- ggplot(data=BB01) +
  geom_point(mapping=aes(x=DATE, y=LSO))
BABALSO <- ggplot(data=BABA01) +
  geom_point(mapping=aes(x=DATE, y=LSO), pch=2)
grid.arrange(BBLSO,BABALSO, ncol=1, nrow=2)
grid.arrange(BB01,BABA01)

plot(AlBBa$Close, pch=2)
plot(BB01$)

ggplot(data=BB01) +
  geom_point(mapping=aes(x=DATE, y=LSO))

  plot(BBn1$Close)
  plot(BBn1$Volume)
  
  plot(BBn3$Volume)
ggplot(data = AMC01) + 
  geom_point(mapping = aes(x = DATE, y = LSO))
              
       plot(AMCn1$Close)
       plot(AMCn1$Close)
       ggplot
       ggplot(data = AMC01) + 
         geom_point(mapping = aes(x = DATE, y = LSO))
       
       plot(AMCn1$Close)
       ggplot
#percentages
view(AMC0$LSO)
AMCLSOP <- AMC0$LSO/200
view(AMCLSOP)