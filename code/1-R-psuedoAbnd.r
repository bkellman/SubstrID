library(dplyr)
library(jsonlite)

glycans = do.call(
	cbind,
	as.data.frame(
		fromJSON('data-raw/GlyTouCan-GlycoCT-Human-Mouse.json')[[2]]$bindings))

glycans %>% 
	filter(duplicated(glytoucan.value,fromLast=T)|duplicated(glytoucan.value,fromLast=F)) %>%
	select(glytoucan.value,glycoct.value,wurcs.value) %>% arrange(glytoucan.value) %>% View()


# parse glycans
df_glycoct = data.frame( Name= glycans$glytoucan.value,
						'Glycan Structure'=glycans$glycoct.value) 

df_wurcs = data.frame( Name= glycans$glytoucan.value,
						'Glycan Structure'=glycans$wurcs.value) 

write.csv(df_glycoct,file='data-raw/GlyTouCan-GlycoCT.csv')
write.csv(df_wurcs,file='data-raw/GlyTouCan-WURCS.csv')

# spoof abundance
r2 = matrix(1,nrow=nrow(glycans))
#r2 = matrix(runif(nrow(r)),nrow=nrow(r))
r3 = t(r2)
colnames(r3) = glycans$glytoucan.value
rownames(r3) = c('A')
write.csv(r3,file='data-raw/GlyTouCan-abundance.csv',quote=F)

