#binary incidence matrix
sm <- matrix(c(1,1,1,0,0,1,0,1,0,1,1,1,1,0,1,0), ncol = 4)
sm
dimnames(sm) <- list(c("Pen", "Pencil", "Notebook", "Sharpener"), paste("Itemset", c(1:4), sep = ""))
sm

#Item matrix
Im <- as(sm, "itemMatrix")
Im
length(Im)
as(Im[1:4], "list")
as(Im[1:4], "ngCMatrix")
inspect(Im)

#Item frequency
itemFrequency(Im, type = "absolute")
itemFrequency(Im, type = "relative")

#Transaction matrix
Tm <- as(sm, "transactions")
Tm
summary(Tm)

#Tm from list
a1 <- list(c("x", "y", "z"), c("y", "z"), c("y", "z"), c("x", "y"))
names(a1) <- paste("Tr", c(1:3), sep = "")
t1 <- as(a1, "transactions")
t1

#apriori
am <- apriori(sm)
summary(am)

#titanic
library(arules)
load("C:/Users/Anurag/Desktop/DA LAB/datasets/titanic.raw.rdata")
str(titanic.raw)

rules <- apriori(titanic.raw)
inspect(rules)

rules <- apriori(titanic.raw, parameter = list(minlen = 2, supp = 0.005, conf = 0.8), appearance = list(rhs = c("Survived=No", "Survived=Yes"), default = "lhs"), control = list(verbose = F))
inspect(rules)
summary(rules)
length(rules)

rules.sorted <- sort(rules, by = "lift")
inspect(rules.sorted)

rules1 <- apriori(titanic.raw, parameter = list(minlen = 2, supp = 0.005, conf = 0.8), appearance = list(rhs = c("Survived=No"), default = "lhs"), control = list(verbose = F))
inspect(rules1)

rules2 <- apriori(titanic.raw, parameter = list(minlen = 2, supp = 0.005, conf = 0.8), appearance = list(rhs = c("Survived=Yes"), default = "lhs"), control = list(verbose = F))
inspect(rules2)

rules3 <- union(rules1, rules2)
inspect(rules3)

rules4 <- intersect(rules, rules1)
inspect(rules4)

areEqual <- setequal(rules, rules1)
areEqual

matchsets <- match(rules, rules1)
matchsets