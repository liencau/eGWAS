 aa=read.table("the_means_for_ratio_of_3228_DUPs_included_na.txt")
 pdf("the_distribution_of_the_mean_of_ratio_of_DUPs_in_503inbreds.pdf")
 hist(aa$V2,breaks=100,xlim=c(0,1),col="blue",border=FALSE,xlab="the mean of ratio",ylab="frequency",main="the distubrition of the mean of ration of DUPs")
 dev.off()
