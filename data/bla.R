setwd("C:/Users/Saskia/Documents/Physik/FP/fp1-nmr/data")

library("Hmisc")
library("plotrix")
x <- c(0.3, 1.7, 2.0, 0.3, 0.2, -0.2, -1.1, -1.3, -1.6) *20
y <- c(16.6293, 16.7460, 16.7693, 16.6973, 16.6661, 16.6438, 16.5993, 16.5582, 16.5285)
errx <- c(0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1)*20
erry <- c(0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 0.001, 0.001)


plot(x, y, type="p", xlim=c(-40, 50), ylim=c(16.5, 16.8), xlab = "Zeitunterschied/s", ylab = "Resonanzfrequenz/MHz", pch=4)
plotCI (x, y, uiw=erry , err=" y " , pch=4, cex=0.6 ,add=TRUE)
plotCI (x, y, uiw=errx , err=" x " , pch=4, cex=0.6 ,add=TRUE)


#text(x=50, y=800, "y=(8.7+-0.4)channel/keV*x-(464+-24)channel", cex=0.8)
fm1 <- lm(y ~ x)
summary(fm1)
abline(fm1, col = "red")


#*******************************************************************************
