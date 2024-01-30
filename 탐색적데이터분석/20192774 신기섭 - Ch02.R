
x <- c(1,2,3,4,5,6,7,8,9,10)
x

x * 3
x + 2
x - 3
x^2
sqrt(x)

c(1,2,3,4,5,6,7,8,9,10)
1:10
10:1
-2:3
5:-7
2.2:5.2
2.2:5.8

letters
LETTERS

x <- c(1:10)
y <- (-5:4)

x + y
x * y
x / y
x ^ y

x + c(1,2)
x + c(1,2,3)

x < 5
x < c(1,2)

x < y
x > y
x == y

any(x < y)
any(x < 5)
all(x > y)
all(x < 5)

x[1]
x[3]
x[1:5]
x[c(1,3,4)]
x[-1:-2]
x[-1:-5]

x[c(1:5, 1:3, 10)]

x = c('one'=1, 'two'=2, 'three'=3)
x

x[1]
x['one']

x = c(1,2,3)
x

names(x) = c('one','two','three')
x

names(x) = c('하나', '둘', '셋')
x

names(x) = c('one','two')
x
names(x) = c('one','two','three','four')
x

factor(x=c('서울','경기','인천','서울'), levels=c('서울','경기','인천'),ordered=FALSE)
factor(x=c('서울','경기','인천','부산'), levels=c('서울','경기','인천'),ordered=FALSE)

x = c('서울','경기','인천','부산','서울','경기')
class(x)
as.factor(x)
x = as.factor(x)
class(x)

a <- matrix(1:10, nrow = 5)
b <- matrix(21:30, ncol = 5)
c <- matrix(21:40, nrow = 5, ncol = 5)
d <- matrix(1:50, nrow = 2, ncol = 2)

ncol(a)
nrow(a)
dim(a)
dim(a)[1]
t(a)
a
colnames(a)=c('첫번째열','두번째열')
a

dim(a)
dim(b)

a %*% b


a[1,]
a[,2]
a[1,2]
