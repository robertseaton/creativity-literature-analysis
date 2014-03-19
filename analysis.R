options(scipen=999)
dat = read.csv("data.csv")
dat$RATIO = dat$COMPRESSED / dat$UNCOMPRESSED
dotchart(x=dat$RATIO, color=dat$CLASS, xlab="Ratio of compressed:uncompressed space.")
t.test(dat$RATIO~dat$CLASS)
