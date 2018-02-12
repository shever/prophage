setwd("E:/rearrangement")

s1 <-read.table("1.gc",header=F)
s2 <-read.table("2.gc",header=F)
s3 <-read.table("3.gc",header=F)
s4 <-read.table("4.gc",header=F)
s5 <-read.table("5.gc",header=F)
s6 <-read.table("6.gc",header=F)
s7 <-read.table("7.gc",header=F)
s8 <-read.table("8.gc",header=F)
s9 <-read.table("9.gc",header=F)
s10 <-read.table("10.gc",header=F)
s11 <-read.table("11.gc",header=F)
s12 <-read.table("12.gc",header=F)
s13 <-read.table("13.gc",header=F)
s14 <-read.table("14.gc",header=F)
s15 <-read.table("15.gc",header=F)
s16 <-read.table("16.gc",header=F)
s17 <-read.table("17.gc",header=F)
s18 <-read.table("18.gc",header=F)
s19 <-read.table("19.gc",header=F)
s20 <-read.table("20.gc",header=F)
s21 <-read.table("21.gc",header=F)
s22 <-read.table("22.gc",header=F)
s23 <-read.table("23.gc",header=F)
s24 <-read.table("24.gc",header=F)
s25 <-read.table("25.gc",header=F)

sites<-read.table("1.phage",header=T)

#pdf("s_all.pdf",height=30, width=20)
postscript("gcd_all.eps", horizontal = F, onefile = T, height = 12, width = 10)
par(mfrow=c(12,2),mai=c(0.3,0.6,0.2,0))


#strain 1
thres <- (max(s1$V3)+min(s1$V3))/2
plot(s1$V2,s1$V3, type="l", col = "skyblue2",lwd = 1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="1",cex = .2,pch = 19)
abline(h=thres+0.01,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==1)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
#axis(1,at=c(0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000,70000),
#     label=c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70))

thres <- (max(s2$V3)+min(s2$V3))/2
plot(s2$V2,s2$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="2",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==2)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
#axis(1,at=c(0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000,70000),
#     label=c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70))

thres <- (max(s3$V3)+min(s3$V3))/2
plot(s3$V2,s3$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="3",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==3)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
#axis(1,at=c(0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000,70000),
#     label=c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70))

thres <- (max(s4$V3)+min(s4$V3))/2
plot(s4$V2,s4$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="4",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==4)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
#axis(1,at=c(0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000,70000),
#     label=c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70))
###strain 5
thres <- (max(s5$V3)+min(s5$V3))/2
plot(s5$V2,s5$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="5",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==5)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
#axis(1,at=c(0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000,70000),
#     label=c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70))

thres <- (max(s6$V3)+min(s6$V3))/2
plot(s6$V2,s6$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="6",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==6)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
#axis(1,at=c(0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000,70000),
#     label=c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70))

thres <- (max(s7$V3)+min(s7$V3))/2
plot(s7$V2,s7$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="7",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==7)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
#axis(1,at=c(0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000,70000),
#     label=c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70))

thres <- (max(s8$V3)+min(s8$V3))/2
plot(s8$V2,s8$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="8",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==8)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
#axis(1,at=c(0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000,70000),
#     label=c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70))

thres <- (max(s9$V3)+min(s9$V3))/2
plot(s9$V2,s9$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="9",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==9)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
#axis(1,at=c(0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000,70000),
#     label=c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70))

thres <- (max(s10$V3)+min(s10$V3))/2
plot(s10$V2,s10$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="10",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==10)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
#axis(1,at=c(0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000,70000),
#     label=c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70))

#strain 11
thres <- (max(s11$V3)+min(s11$V3))/2
plot(s11$V2,s11$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="11",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==11)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
#axis(1,at=c(0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000,70000),
#     label=c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70))

thres <- (max(s12$V3)+min(s12$V3))/2
plot(s12$V2,s12$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="12",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==12)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
#axis(1,at=c(0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000,70000),
#     label=c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70))

thres <- (max(s13$V3)+min(s13$V3))/2
plot(s13$V2,s13$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="13",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==13)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
#axis(1,at=c(0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000,70000),
#     label=c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70))

thres <- (max(s14$V3)+min(s14$V3))/2
plot(s14$V2,s14$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="14",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==14)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
#axis(1,at=c(0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000,70000),
#     label=c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70))
###strain 15
thres <- (max(s15$V3)+min(s15$V3))/2
plot(s15$V2,s15$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="15",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==15)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
#axis(1,at=c(0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000,70000),
#     label=c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70))

thres <- (max(s16$V3)+min(s16$V3))/2
plot(s16$V2,s16$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="16",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==16)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
#axis(1,at=c(0,5000,10000,15000,20000,25000,30000,35000,40000,45000,50000,55000,60000,65000,70000),
#     label=c(0,5,10,15,20,25,30,35,40,45,50,55,60,65,70))

thres <- (max(s17$V3)+min(s17$V3))/2
plot(s17$V2,s17$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="17",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==17)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)

thres <- (max(s18$V3)+min(s18$V3))/2
plot(s18$V2,s18$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="18",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==18)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)



thres <- (max(s19$V3)+min(s19$V3))/2
plot(s19$V2,s19$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="19",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue",lwd=1)
site <- subset(sites, sites$Strain==19)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)


#strain 21
thres <- (max(s21$V3)+min(s21$V3))/2
plot(s21$V2,s21$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="21",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==21)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)

thres <- (max(s22$V3)+min(s22$V3))/2
plot(s22$V2,s22$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="22",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==22)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)

thres <- (max(s23$V3)+min(s23$V3))/2
plot(s23$V2,s23$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="23",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==23)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)

thres <- (max(s24$V3)+min(s24$V3))/2
plot(s24$V2,s24$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="24",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==24)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
axis(1,at=c(0,10000,20000,30000,40000,50000,60000,70000),
     label=c(0,10,20,30,40,50,60,70))
###strain 25
thres <- (max(s25$V3)+min(s25$V3))/2
plot(s25$V2,s25$V3, type="l", col = "skyblue2",lwd=1,xlab = "Location/10,000 bps",axes = FALSE,
     xaxt = "n",yaxt = "n",ylab="25",cex = .2,pch = 19)
abline(h=thres,lty=2,col="dark blue")
site <- subset(sites, sites$Strain==25)
cl <- rep("dark red",nrow(site))
for(i in 1:length(cl)){
  if(site$Label[i] =='TP') cl[i] <- "rosybrown1"
  else if (site$Label[i]=='IN') cl[i] <- "slategray4"
}
abline(v=site$P,col=cl,lty=6,lwd=1)
axis(1,at=c(0,10000,20000,30000,40000,50000,60000,70000),
     label=c(0,10,20,30,40,50,60,70))

dev.off()
