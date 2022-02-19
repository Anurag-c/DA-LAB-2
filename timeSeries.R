#scan()
s <- scan("C:/Users/Anurag/Desktop/DA LAB/datasets/attd.dat")
s

#ts()
s <- scan("C:/Users/Anurag/Desktop/DA LAB/datasets/SA.dat")
sa <- ts(s, frequency = 4, start = c(2011, 1)) 
sa

#SMA()
library("TTR")
r <- scan("C:/Users/Anurag/Desktop/DA LAB/datasets/SA.dat")
t <- ts(r)
t
plot.ts(t)

sm <- SMA(t, n = 4)
sm
plot.ts(sm)

sm <- SMA(t, n = 9)
sm
plot.ts(sm)

#decompose()
t <- ts(r, frequency = 12)
d <- decompose(t)
d

#stl()
t <- ts(r, frequency = 4, start = c(2011, 1))
d <- stl(t, s.window = "periodic")
d

#case study on time series
AirPassengers
passengers <- decompose(AirPassengers)
passengers

plot(passengers$trend, main = "Trend", xlab = "Jan 1949 to Dec 1960", ylab = "No.of Passengers")
plot(passengers$seasonal, main = "Seasonal", xlab = "Jan 1949 to Dec 1960", ylab = "No.of Passengers")
plot(ts(passengers$seasonal[1:12]), main = "Seasonal monthly data for 1949", xlab = "Jan 1949 to Dec 1949", ylab = "No.of Passengers")

data(AirPassengers)
class(AirPassengers)

start(AirPassengers)
end(AirPassengers)
frequency(AirPassengers)
summary(AirPassengers)

plot(AirPassengers)
abline(reg = lm(AirPassengers ~ time(AirPassengers)))

cycle(AirPassengers)
plot(aggregate(AirPassengers, FUN = mean))

boxplot(AirPassengers ~ cycle(AirPassengers))

#ARIMA MODEL
r <- scan("C:/Users/Anurag/Desktop/DA LAB/datasets/attd.dat")
ax <- ts(r)
ax

#1. differencing
ad <- diff(ax, differences = 2)
plot.ts(ad)
ad

#2. find auto correlation and partial correlation
ac <- acf(ad)
ac
pac <- pacf(ad)
pac

#3. forecasting
af <- arima(ax, order = c(0, 2, 1))
af

library(forecast)
f <- forecast.Arima(af)
plot.forecast(f)

#4. diagnostic checking
tsdiag(af)






