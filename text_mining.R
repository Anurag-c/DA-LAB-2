library("tm")
fname <- file.path("D:", "tm")
fname
dir(fname)
files <- Corpus(DirSource(fname))
files
files <- VCorpus(DirSource(fname))
files
summary(files)
inspect(files)

tdmfiles <- TermDocumentMatrix(files)
Docs(tdmfiles)
nDocs(tdmfiles)
nTerms(tdmfiles)
Terms(tdmfiles)
inspect(tdmfiles)

Dc <- tm_map(files, tolower)
Dc
inspect(Dc)

freq <- colSums(as.matrix(tdmfiles))
length(freq)
freq
ord <- order(freq)
ord

mt <- as.matrix(tdmfiles)
dim(mt)
mt
write.csv(mt, file = "D:/Dtmt.csv")
read.csv("D:/Dtmt.csv")
