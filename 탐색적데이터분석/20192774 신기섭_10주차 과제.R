library(plyr)
library(reshape2)
profile = read.csv('data/profile.csv', stringsAsFactors = FALSE)
trans = read.csv('data/transaction.csv', stringsAsFactors = FALSE)

# 1. 수입상품구매비율

f = ddply(trans, .(custid), function(x) {data.frame(수입상품구매비율 = sum(x$import)/length(x$import))})
head(f)
profile = join(profile, f, by = 'custid', type = 'left', match = 'first')
head(profile)

# 2. 주구매코너

func <- function(x) {
  value_count = count(x$corner)
  value_count$x = as.character(value_count$x)
  value_count[order(value_count$freq, decreasing = TRUE)[1],1]
}

f = ddply(trans, .(custid), function(x) {data.frame(주구매코너 = func(x))})
head(f)
profile = join(profile, f, by = 'custid', type = 'left', match = 'first')
head(profile)

# 3. 시간대별구매건수(09~12:오전, 13~15:오후, 16~20:저녁)

trans$datetime = as.POSIXct(trans$datetime)
trans$TIME = format(trans$datetime, format = '%H')
bins = c(13, 16, 21)
s = c('오전', '오후', '저녁')
trans$timezone = s[findInterval(trans$TIME, bins)+1]
head(trans)

f = dcast(trans, custid~timezone, value.var = 'custid', length)
head(f)
profile = join(profile, f, by = 'custid', type = 'left', match = 'first')
head(profile)
