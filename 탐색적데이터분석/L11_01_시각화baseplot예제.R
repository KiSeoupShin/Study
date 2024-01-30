
pollution <- read.csv('data/pollution.csv')
head(pollution)

ppm <- pollution$pm25
boxplot(ppm, col = 'blue')
abline(h = 12)

hist(ppm, col = 'green')
rug(ppm)
abline(v = 12, lwd =2)
abline(v = median(ppm), col = 'magenta', lwd = 4)

hist(ppm, col = 'green', breaks = 100)
rug(ppm)

hist(ppm, col = 'green', breaks = 5)
rug(ppm)

plot(pollution$latitude, pollution$pm25)
with(pollution, plot(latitude, pm25))
str(pollution)

with(pollution, plot(latitude, pm25, col = region))
abline(h = 12, lwd = 2, lty = 2)


reg <- table(pollution$region)
reg

barplot(reg, col='wheat', main = '각 지역의 개수')
boxplot(pm25~region, data = pollution, col = 'red')


