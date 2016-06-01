#Project 3 Galaxy

n<-20000 # number of points to plot
t<-0.20944 #12 Degrees converted to radians
theta<-seq(0,9*pi,length.out = n) # a vector of size 1e3 of theta values

#Original line
r<-exp(1)^((theta)*tan(t))# parametric equation in polar coordinates
x<-r*cos(theta) # convert from polar to Cartesian coordinates
y<-r*sin(theta) # convert from polar to Cartesian coordinates
plot(jitter(x,amount = 4),jitter(y,amount = 5),col=rainbow(n),pch=".",lwd=6,xlab="",
            ylab="",cex=1.5,axes=FALSE,asp=0.5,xlim=c(-110,110),ylim=c(-110,110))

# second line
u<-exp(1)^((theta+pi)*tan(t))# parametric equation in polar coordinates
x<-u*cos(theta) # convert from polar to Cartesian coordinates
y<-u*sin(theta) # convert from polar to Cartesian coordinates
points(jitter(x,amount = 4),jitter(y,amount = 5),pch=".",col=rainbow(n),xlab="",ylab="",cex=1.5)

