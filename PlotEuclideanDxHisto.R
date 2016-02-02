# Plot histograms: Euclidean distances among all sites, SHEN sites, GSMNP sites

require(sp)
par(mfrow=c(3,1), las=1, cex=1.01, mar=c(4,3,1,1), oma=c(2,2,1,1))

d <- read.csv("BKT_COVS_SITES.csv", header=T, sep=",")
geodat <- as.matrix(cbind(d$LonDD, d$LatDD))
hist(spDistsN1(geodat, geodat[1,], longlat=T), col="black", 
     main="All BKT sites (336)", xlab="", ylab="")

d1 <- subset(d, Source=="Williams")
geodat <- as.matrix(cbind(d1$LonDD, d1$LatDD))
hist(spDistsN1(geodat, geodat[1,], longlat=T), col="black", 
     main="SHEN BKT sites (157)", xlab="", ylab="")

d2 <- subset(d, Source=="Kulp")
geodat <- as.matrix(cbind(d2$LonDD, d2$LatDD))
hist(spDistsN1(geodat, geodat[1,], longlat=T), col="black", 
     main="GSMNP BKT sites (71)", xlab="", ylab="")
mtext(side=1, line=3, text="Intersite Euclidean distance (km)", cex=1.5)
mtext(side=2, line=0, text="Frequency", cex=1.5, outer=T, las=3)
