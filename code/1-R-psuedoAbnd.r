#write psuedo-abundance
r = read.csv('data-raw/glycan_sequences_glycoct.csv')
r2 = matrix(1,nrow=nrow(r))
#r2 = matrix(runif(nrow(r)),nrow=nrow(r))
r3 = t(r2)
colnames(r3) = r$Name
rownames(r3) = c('A')
write.csv(r3,file='data-raw/glycan_sequences_glycoct.abundance.csv',quote=F)
