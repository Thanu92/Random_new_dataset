#Sep 19, 2023

#Sister species table
getwd()
library(foreach)
#install.packages("phytools")
library(phytools)
library(maps)
library(phangorn)
library(phylotools)
#Read fasta files of placed co1 on the bb tree
R_co1_20_1=read.fasta(file = "CO1_20_1.fasta")
R_co1_20_2=read.fasta(file = "CO1_20_2.fasta")
R_co1_20_3=read.fasta(file = "CO1_20_3.fasta")
R_co1_20_4=read.fasta(file = "CO1_20_4.fasta")
R_co1_20_5=read.fasta(file = "CO1_20_5.fasta")
R_co1_20_6=read.fasta(file = "CO1_20_6.fasta")
R_co1_20_7=read.fasta(file = "CO1_20_7.fasta")
R_co1_20_8=read.fasta(file = "CO1_20_8.fasta")
R_co1_20_9=read.fasta(file = "CO1_20_9.fasta")
R_co1_20_10=read.fasta(file = "CO1_20_10.fasta")
R_co1_40_1=read.fasta(file = "CO1_40_1.fasta")
R_co1_40_2=read.fasta(file = "CO1_40_2.fasta")
R_co1_40_3=read.fasta(file = "CO1_40_3.fasta")
R_co1_40_4=read.fasta(file = "CO1_40_4.fasta")
R_co1_40_5=read.fasta(file = "CO1_40_5.fasta")
R_co1_40_6=read.fasta(file = "CO1_40_6.fasta")
R_co1_40_7=read.fasta(file = "CO1_40_7.fasta")
R_co1_40_8=read.fasta(file = "CO1_40_8.fasta")
R_co1_40_9=read.fasta(file = "CO1_40_9.fasta")
R_co1_40_10=read.fasta(file = "CO1_40_10.fasta")
R_co1_60_1=read.fasta(file = "CO1_60_1.fasta")
R_co1_60_2=read.fasta(file = "CO1_60_2.fasta")
R_co1_60_3=read.fasta(file = "CO1_60_3.fasta")
R_co1_60_4=read.fasta(file = "CO1_60_4.fasta")
R_co1_60_5=read.fasta(file = "CO1_60_5.fasta")
R_co1_60_6=read.fasta(file = "CO1_60_6.fasta")
R_co1_60_7=read.fasta(file = "CO1_60_7.fasta")
R_co1_60_8=read.fasta(file = "CO1_60_8.fasta")
R_co1_60_9=read.fasta(file = "CO1_60_9.fasta")
R_co1_60_10=read.fasta(file = "CO1_60_10.fasta")
R_co1_80_1=read.fasta(file = "CO1_80_1.fasta")
R_co1_80_2=read.fasta(file = "CO1_80_2.fasta")
R_co1_80_3=read.fasta(file = "CO1_80_3.fasta")
R_co1_80_4=read.fasta(file = "CO1_80_4.fasta")
R_co1_80_5=read.fasta(file = "CO1_80_5.fasta")
R_co1_80_6=read.fasta(file = "CO1_80_6.fasta")
R_co1_80_7=read.fasta(file = "CO1_80_7.fasta")
R_co1_80_8=read.fasta(file = "CO1_80_8.fasta")
R_co1_80_9=read.fasta(file = "CO1_80_9.fasta")
R_co1_80_10=read.fasta(file = "CO1_80_10.fasta")
R_co1_1_1=read.fasta(file = "CO1_1_1.fasta")
R_co1_1_2=read.fasta(file = "CO1_1_2.fasta")
R_co1_1_3=read.fasta(file = "CO1_1_3.fasta")
R_co1_1_4=read.fasta(file = "CO1_1_4.fasta")
R_co1_1_5=read.fasta(file = "CO1_1_5.fasta")
R_co1_1_6=read.fasta(file = "CO1_1_6.fasta")
R_co1_1_7=read.fasta(file = "CO1_1_7.fasta")
R_co1_1_8=read.fasta(file = "CO1_1_8.fasta")
R_co1_1_9=read.fasta(file = "CO1_1_9.fasta")
R_co1_1_10=read.fasta(file = "CO1_1_10.fasta")



#read the refernce tree
ReferenceTree <- read.tree("RAxML_bestTree.FR100_new")
#Read the 40 trees generated using Random samples
R20_1_tree<-read.tree("20_1_new")
R20_2_tree<-read.tree("20_2_new")
R20_3_tree<-read.tree("20_3_new")
R20_4_tree<-read.tree("20_4_new")
R20_5_tree<-read.tree("20_5_new")
R20_6_tree<-read.tree("20_6_new")
R20_7_tree<-read.tree("20_7_new")
R20_8_tree<-read.tree("20_8_new")
R20_9_tree<-read.tree("20_9_new")
R20_10_tree<-read.tree("20_10_new")
R40_1_tree<-read.tree("40_1_new")
R40_2_tree<-read.tree("40_2_new")
R40_3_tree<-read.tree("40_3_new")
R40_4_tree<-read.tree("40_4_new")
R40_5_tree<-read.tree("40_5_new")
R40_6_tree<-read.tree("40_6_new")
R40_7_tree<-read.tree("40_7_new")
R40_8_tree<-read.tree("40_8_new")
R40_9_tree<-read.tree("40_9_new")
R40_10_tree<-read.tree("40_10_new")
R60_1_tree<-read.tree("60_1_new")
R60_2_tree<-read.tree("60_2_new")
R60_3_tree<-read.tree("60_3_new")
R60_4_tree<-read.tree("60_4_new")
R60_5_tree<-read.tree("60_5_new")
R60_6_tree<-read.tree("60_6_new")
R60_7_tree<-read.tree("60_7_new")
R60_8_tree<-read.tree("60_8_new")
R60_9_tree<-read.tree("60_9_new")
R60_10_tree<-read.tree("60_10_new")
R60_1_tree<-read.tree("60_1_new")
R80_2_tree<-read.tree("80_2_new")
R80_3_tree<-read.tree("80_3_new")
R80_4_tree<-read.tree("80_4_new")
R80_5_tree<-read.tree("80_5_new")
R80_6_tree<-read.tree("80_6_new")
R80_7_tree<-read.tree("80_7_new")
R80_8_tree<-read.tree("80_8_new")
R80_9_tree<-read.tree("80_9_new")
R80_10_tree<-read.tree("80_10_new")
R80_1_tree<-read.tree("80_1_new")
R99_1_tree<-read.tree("99_1_new")
R99_2_tree<-read.tree("99_2_new")
R99_3_tree<-read.tree("99_3_new")
R99_4_tree<-read.tree("99_4_new")
R99_5_tree<-read.tree("99_5_new")
R99_6_tree<-read.tree("99_6_new")
R99_7_tree<-read.tree("99_7_new")
R99_8_tree<-read.tree("99_8_new")
R99_9_tree<-read.tree("99_9_new")
R99_10_tree<-read.tree("99_10_new")
#------
R_co1_20_1_species <- R_co1_20_1$seq.name
R_co1_20_2_species <- R_co1_20_2$seq.name
R_co1_20_3_species <- R_co1_20_3$seq.name
R_co1_20_4_species <- R_co1_20_4$seq.name
R_co1_20_5_species <- R_co1_20_5$seq.name
R_co1_20_6_species <- R_co1_20_6$seq.name
R_co1_20_7_species <- R_co1_20_7$seq.name
R_co1_20_8_species <- R_co1_20_8$seq.name
R_co1_20_9_species <- R_co1_20_9$seq.name
R_co1_20_10_species <- R_co1_20_10$seq.name
R_co1_40_1_species <- R_co1_40_1$seq.name
R_co1_40_2_species <- R_co1_40_2$seq.name
R_co1_40_3_species <- R_co1_40_3$seq.name
R_co1_40_4_species <- R_co1_40_4$seq.name
R_co1_40_5_species <- R_co1_40_5$seq.name
R_co1_40_6_species <- R_co1_40_6$seq.name
R_co1_40_7_species <- R_co1_40_7$seq.name
R_co1_40_8_species <- R_co1_40_8$seq.name
R_co1_40_9_species <- R_co1_40_9$seq.name
R_co1_40_10_species <- R_co1_40_10$seq.name
R_co1_60_1_species <- R_co1_60_1$seq.name
R_co1_60_2_species <- R_co1_60_2$seq.name
R_co1_60_3_species <- R_co1_60_3$seq.name
R_co1_60_4_species <- R_co1_60_4$seq.name
R_co1_60_5_species <- R_co1_60_5$seq.name
R_co1_60_6_species <- R_co1_60_6$seq.name
R_co1_60_7_species <- R_co1_60_7$seq.name
R_co1_60_8_species <- R_co1_60_8$seq.name
R_co1_60_9_species <- R_co1_60_9$seq.name
R_co1_60_10_species <- R_co1_60_10$seq.name
R_co1_80_1_species <- R_co1_80_1$seq.name
R_co1_80_2_species <- R_co1_80_2$seq.name
R_co1_80_3_species <- R_co1_80_3$seq.name
R_co1_80_4_species <- R_co1_80_4$seq.name
R_co1_80_5_species <- R_co1_80_5$seq.name
R_co1_80_6_species <- R_co1_80_6$seq.name
R_co1_80_7_species <- R_co1_80_7$seq.name
R_co1_80_8_species <- R_co1_80_8$seq.name
R_co1_80_9_species <- R_co1_80_9$seq.name
R_co1_80_10_species <- R_co1_80_10$seq.name
R_co1_1_1_species <- R_co1_1_1$seq.name
R_co1_1_2_species <- R_co1_1_2$seq.name
R_co1_1_3_species <- R_co1_1_3$seq.name
R_co1_1_4_species <- R_co1_1_4$seq.name
R_co1_1_5_species <- R_co1_1_5$seq.name
R_co1_1_6_species <- R_co1_1_6$seq.name
R_co1_1_7_species <- R_co1_1_7$seq.name
R_co1_1_8_species <- R_co1_1_8$seq.name
R_co1_1_9_species <- R_co1_1_9$seq.name
R_co1_1_10_species <- R_co1_1_10$seq.name

##bb 80% tree when placed 20% co1
library(ips)
#sister(tree, "t4", type = "terminal", label = T)
RefTree_R_co1_20_1_List <- foreach(i=1:length(R_co1_20_1_species)) %do% sister(ReferenceTree,R_co1_20_1_species[i],type="terminal",label=T)
R_80_co1_20_1_List <- foreach(i=1:length(R_co1_20_1_species)) %do% sister(R80_1_tree,R_co1_20_1_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_1_List [(RefTree_R_co1_20_1_List %in% R_80_co1_20_1_List )] #401
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_1_List [!(RefTree_R_co1_20_1_List %in% R_80_co1_20_1_List)] #503

RefTree_R_co1_20_2_List <- foreach(i=1:length(R_co1_20_2_species)) %do% sister(ReferenceTree,R_co1_20_2_species[i],type="terminal",label=T)
R_80_co1_20_2_List <- foreach(i=1:length(R_co1_20_2_species)) %do% sister(R80_2_tree,R_co1_20_2_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_2_List [(RefTree_R_co1_20_2_List %in% R_80_co1_20_2_List )] #393
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_2_List [!(RefTree_R_co1_20_2_List %in% R_80_co1_20_2_List)] #511

RefTree_R_co1_20_3_List <- foreach(i=1:length(R_co1_20_3_species)) %do% sister(ReferenceTree,R_co1_20_3_species[i],type="terminal",label=T)
R_80_co1_20_3_List <- foreach(i=1:length(R_co1_20_3_species)) %do% sister(R80_3_tree,R_co1_20_3_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_3_List [(RefTree_R_co1_20_3_List %in% R_80_co1_20_3_List )] #358
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_3_List [!(RefTree_R_co1_20_3_List %in% R_80_co1_20_3_List)] #546

RefTree_R_co1_20_4_List <- foreach(i=1:length(R_co1_20_4_species)) %do% sister(ReferenceTree,R_co1_20_4_species[i],type="terminal",label=T)
R_80_co1_20_4_List <- foreach(i=1:length(R_co1_20_4_species)) %do% sister(R80_4_tree,R_co1_20_4_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_4_List [(RefTree_R_co1_20_4_List %in% R_80_co1_20_4_List )] #364
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_4_List [!(RefTree_R_co1_20_4_List %in% R_80_co1_20_4_List)] #540

RefTree_R_co1_20_5_List <- foreach(i=1:length(R_co1_20_5_species)) %do% sister(ReferenceTree,R_co1_20_5_species[i],type="terminal",label=T)
R_80_co1_20_5_List <- foreach(i=1:length(R_co1_20_5_species)) %do% sister(R80_5_tree,R_co1_20_5_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_5_List [(RefTree_R_co1_20_5_List %in% R_80_co1_20_5_List )] #382
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_5_List [!(RefTree_R_co1_20_5_List %in% R_80_co1_20_5_List)] #522

RefTree_R_co1_20_6_List <- foreach(i=1:length(R_co1_20_6_species)) %do% sister(ReferenceTree,R_co1_20_6_species[i],type="terminal",label=T)
R_80_co1_20_6_List <- foreach(i=1:length(R_co1_20_6_species)) %do% sister(R80_6_tree,R_co1_20_6_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_6_List [(RefTree_R_co1_20_6_List %in% R_80_co1_20_6_List )] #337
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_6_List [!(RefTree_R_co1_20_6_List %in% R_80_co1_20_6_List)] #567

RefTree_R_co1_20_7_List <- foreach(i=1:length(R_co1_20_7_species)) %do% sister(ReferenceTree,R_co1_20_7_species[i],type="terminal",label=T)
R_80_co1_20_7_List <- foreach(i=1:length(R_co1_20_7_species)) %do% sister(R80_7_tree,R_co1_20_7_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_7_List [(RefTree_R_co1_20_7_List %in% R_80_co1_20_7_List )] #384
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_7_List [!(RefTree_R_co1_20_7_List %in% R_80_co1_20_7_List)] #520

RefTree_R_co1_20_8_List <- foreach(i=1:length(R_co1_20_8_species)) %do% sister(ReferenceTree,R_co1_20_8_species[i],type="terminal",label=T)
R_80_co1_20_8_List <- foreach(i=1:length(R_co1_20_8_species)) %do% sister(R80_8_tree,R_co1_20_8_species[i],type="terminal",label=T)



#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_8_List [(RefTree_R_co1_20_8_List %in% R_80_co1_20_8_List )] #389
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_8_List [!(RefTree_R_co1_20_8_List %in% R_80_co1_20_8_List)] #515

RefTree_R_co1_20_9_List <- foreach(i=1:length(R_co1_20_9_species)) %do% sister(ReferenceTree,R_co1_20_9_species[i],type="terminal",label=T)
R_80_co1_20_9_List <- foreach(i=1:length(R_co1_20_9_species)) %do% sister(R80_9_tree,R_co1_20_9_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_9_List [(RefTree_R_co1_20_9_List %in% R_80_co1_20_9_List )] #394
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_9_List [!(RefTree_R_co1_20_9_List %in% R_80_co1_20_9_List)] #510

RefTree_R_co1_20_10_List <- foreach(i=1:length(R_co1_20_10_species)) %do% sister(ReferenceTree,R_co1_20_10_species[i],type="terminal",label=T)
R_80_co1_20_10_List <- foreach(i=1:length(R_co1_20_10_species)) %do% sister(R80_10_tree,R_co1_20_10_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_20_10_List [(RefTree_R_co1_20_10_List %in% R_80_co1_20_10_List )] #367
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_20_10_List [!(RefTree_R_co1_20_10_List %in% R_80_co1_20_10_List)] #537

#bb 60% tree when placed 40% co1

RefTree_R_co1_40_1_List <- foreach(i=1:length(R_co1_40_1_species)) %do% sister(ReferenceTree,R_co1_40_1_species[i],type="terminal",label=T)
R_60_co1_40_1_List <- foreach(i=1:length(R_co1_40_1_species)) %do% sister(R60_1_tree,R_co1_40_1_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_1_List [(RefTree_R_co1_40_1_List %in% R_60_co1_40_1_List )] #627
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_1_List [!(RefTree_R_co1_40_1_List %in% R_60_co1_40_1_List )] #1181

RefTree_R_co1_40_2_List <- foreach(i=1:length(R_co1_40_2_species)) %do% sister(ReferenceTree,R_co1_40_2_species[i],type="terminal",label=T)
R_60_co1_40_2_List <- foreach(i=1:length(R_co1_40_2_species)) %do% sister(R60_2_tree,R_co1_40_2_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_2_List [(RefTree_R_co1_40_2_List %in% R_60_co1_40_2_List )] #582
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_2_List [!(RefTree_R_co1_40_2_List %in% R_60_co1_40_2_List )] #1226

RefTree_R_co1_40_3_List <- foreach(i=1:length(R_co1_40_3_species)) %do% sister(ReferenceTree,R_co1_40_3_species[i],type="terminal",label=T)
R_60_co1_40_3_List <- foreach(i=1:length(R_co1_40_3_species)) %do% sister(R60_3_tree,R_co1_40_3_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_3_List [(RefTree_R_co1_40_3_List %in% R_60_co1_40_3_List )] #573
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_3_List [!(RefTree_R_co1_40_3_List %in% R_60_co1_40_3_List )] #1235

RefTree_R_co1_40_4_List <- foreach(i=1:length(R_co1_40_4_species)) %do% sister(ReferenceTree,R_co1_40_4_species[i],type="terminal",label=T)
R_60_co1_40_4_List <- foreach(i=1:length(R_co1_40_4_species)) %do% sister(R60_4_tree,R_co1_40_4_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_4_List [(RefTree_R_co1_40_4_List %in% R_60_co1_40_4_List )] #588
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_4_List [!(RefTree_R_co1_40_4_List %in% R_60_co1_40_4_List )] #1220

RefTree_R_co1_40_5_List <- foreach(i=1:length(R_co1_40_5_species)) %do% sister(ReferenceTree,R_co1_40_5_species[i],type="terminal",label=T)
R_60_co1_40_5_List <- foreach(i=1:length(R_co1_40_5_species)) %do% sister(R60_5_tree,R_co1_40_5_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_5_List [(RefTree_R_co1_40_5_List %in% R_60_co1_40_5_List )] #578
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_5_List [!(RefTree_R_co1_40_5_List %in% R_60_co1_40_5_List )] #1230

RefTree_R_co1_40_6_List <- foreach(i=1:length(R_co1_40_6_species)) %do% sister(ReferenceTree,R_co1_40_6_species[i],type="terminal",label=T)
R_60_co1_40_6_List <- foreach(i=1:length(R_co1_40_6_species)) %do% sister(R60_6_tree,R_co1_40_6_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_6_List [(RefTree_R_co1_40_6_List %in% R_60_co1_40_6_List )] #575
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_6_List [!(RefTree_R_co1_40_6_List %in% R_60_co1_40_6_List )] #1233

RefTree_R_co1_40_7_List <- foreach(i=1:length(R_co1_40_7_species)) %do% sister(ReferenceTree,R_co1_40_7_species[i],type="terminal",label=T)
R_60_co1_40_7_List <- foreach(i=1:length(R_co1_40_7_species)) %do% sister(R60_7_tree,R_co1_40_7_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_7_List [(RefTree_R_co1_40_7_List %in% R_60_co1_40_7_List )] #606
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_7_List [!(RefTree_R_co1_40_7_List %in% R_60_co1_40_7_List )] #1202

RefTree_R_co1_40_8_List <- foreach(i=1:length(R_co1_40_8_species)) %do% sister(ReferenceTree,R_co1_40_8_species[i],type="terminal",label=T)
R_60_co1_40_8_List <- foreach(i=1:length(R_co1_40_8_species)) %do% sister(R60_8_tree,R_co1_40_8_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_8_List [(RefTree_R_co1_40_8_List %in% R_60_co1_40_8_List )] #610
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_8_List [!(RefTree_R_co1_40_8_List %in% R_60_co1_40_8_List )] #1198

RefTree_R_co1_40_9_List <- foreach(i=1:length(R_co1_40_9_species)) %do% sister(ReferenceTree,R_co1_40_9_species[i],type="terminal",label=T)
R_60_co1_40_9_List <- foreach(i=1:length(R_co1_40_9_species)) %do% sister(R60_9_tree,R_co1_40_9_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_9_List [(RefTree_R_co1_40_9_List %in% R_60_co1_40_9_List )] #575
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_9_List [!(RefTree_R_co1_40_9_List %in% R_60_co1_40_9_List )] #1233

RefTree_R_co1_40_10_List <- foreach(i=1:length(R_co1_40_10_species)) %do% sister(ReferenceTree,R_co1_40_10_species[i],type="terminal",label=T)
R_60_co1_40_10_List <- foreach(i=1:length(R_co1_40_10_species)) %do% sister(R60_10_tree,R_co1_40_10_species[i],type="terminal",label=T)


#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_40_10_List [(RefTree_R_co1_40_10_List %in% R_60_co1_40_10_List )] #587
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_40_10_List [!(RefTree_R_co1_40_10_List %in% R_60_co1_40_10_List )] #1221

#RefTree_biasco1List[sapply(names(RefTree_biasco1List), function(x) !identical(RefTree_biasco1List[[x]], biasco1List[[x]]))] 

#bb 40% tree when placed 60% co1

RefTree_R_co1_60_1_List <- foreach(i=1:length(R_co1_60_1_species)) %do% sister(ReferenceTree,R_co1_60_1_species[i],type="terminal",label=T)
R_40_co1_60_1_List <- foreach(i=1:length(R_co1_60_1_species)) %do% sister(R40_1_tree,R_co1_60_1_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_1_List [(RefTree_R_co1_60_1_List %in% R_40_co1_60_1_List )] #585
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_1_List [!(RefTree_R_co1_60_1_List %in% R_40_co1_60_1_List )] #2127

RefTree_R_co1_60_2_List <- foreach(i=1:length(R_co1_60_2_species)) %do% sister(ReferenceTree,R_co1_60_2_species[i],type="terminal",label=T)
R_40_co1_60_2_List <- foreach(i=1:length(R_co1_60_2_species)) %do% sister(R40_2_tree,R_co1_60_2_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_2_List [(RefTree_R_co1_60_2_List %in% R_40_co1_60_2_List )] #543
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_2_List [!(RefTree_R_co1_60_2_List %in% R_40_co1_60_2_List )] #2169


RefTree_R_co1_60_3_List <- foreach(i=1:length(R_co1_60_3_species)) %do% sister(ReferenceTree,R_co1_60_3_species[i],type="terminal",label=T)
R_40_co1_60_3_List <- foreach(i=1:length(R_co1_60_3_species)) %do% sister(R40_3_tree,R_co1_60_3_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_3_List [(RefTree_R_co1_60_3_List %in% R_40_co1_60_3_List )] #592
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_3_List [!(RefTree_R_co1_60_3_List %in% R_40_co1_60_3_List )] #2120

RefTree_R_co1_60_4_List <- foreach(i=1:length(R_co1_60_4_species)) %do% sister(ReferenceTree,R_co1_60_4_species[i],type="terminal",label=T)
R_40_co1_60_4_List <- foreach(i=1:length(R_co1_60_4_species)) %do% sister(R40_4_tree,R_co1_60_4_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_4_List [(RefTree_R_co1_60_4_List %in% R_40_co1_60_4_List )] #600
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_4_List [!(RefTree_R_co1_60_4_List %in% R_40_co1_60_4_List )] #2212

RefTree_R_co1_60_5_List <- foreach(i=1:length(R_co1_60_5_species)) %do% sister(ReferenceTree,R_co1_60_5_species[i],type="terminal",label=T)
R_40_co1_60_5_List <- foreach(i=1:length(R_co1_60_5_species)) %do% sister(R40_5_tree,R_co1_60_5_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_5_List [(RefTree_R_co1_60_5_List %in% R_40_co1_60_5_List )] #569
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_5_List [!(RefTree_R_co1_60_5_List %in% R_40_co1_60_5_List )] #2143

RefTree_R_co1_60_6_List <- foreach(i=1:length(R_co1_60_6_species)) %do% sister(ReferenceTree,R_co1_60_6_species[i],type="terminal",label=T)
R_40_co1_60_6_List <- foreach(i=1:length(R_co1_60_6_species)) %do% sister(R40_6_tree,R_co1_60_6_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_6_List [(RefTree_R_co1_60_6_List %in% R_40_co1_60_6_List )] #567
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_6_List [!(RefTree_R_co1_60_6_List %in% R_40_co1_60_6_List )] #2145

RefTree_R_co1_60_7_List <- foreach(i=1:length(R_co1_60_7_species)) %do% sister(ReferenceTree,R_co1_60_7_species[i],type="terminal",label=T)
R_40_co1_60_7_List <- foreach(i=1:length(R_co1_60_7_species)) %do% sister(R40_7_tree,R_co1_60_7_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_7_List [(RefTree_R_co1_60_7_List %in% R_40_co1_60_7_List )] #584
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_7_List [!(RefTree_R_co1_60_7_List %in% R_40_co1_60_7_List )] #2128

RefTree_R_co1_60_8_List <- foreach(i=1:length(R_co1_60_8_species)) %do% sister(ReferenceTree,R_co1_60_8_species[i],type="terminal",label=T)
R_40_co1_60_8_List <- foreach(i=1:length(R_co1_60_8_species)) %do% sister(R40_8_tree,R_co1_60_8_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_8_List [(RefTree_R_co1_60_8_List %in% R_40_co1_60_8_List )] #591
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_8_List [!(RefTree_R_co1_60_8_List %in% R_40_co1_60_8_List )] #2121

RefTree_R_co1_60_9_List <- foreach(i=1:length(R_co1_60_9_species)) %do% sister(ReferenceTree,R_co1_60_9_species[i],type="terminal",label=T)
R_40_co1_60_9_List <- foreach(i=1:length(R_co1_60_9_species)) %do% sister(R40_9_tree,R_co1_60_9_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_9_List [(RefTree_R_co1_60_9_List %in% R_40_co1_60_9_List )] #553
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_9_List [!(RefTree_R_co1_60_9_List %in% R_40_co1_60_9_List )] #2159

RefTree_R_co1_60_10_List <- foreach(i=1:length(R_co1_60_10_species)) %do% sister(ReferenceTree,R_co1_60_10_species[i],type="terminal",label=T)
R_40_co1_60_10_List <- foreach(i=1:length(R_co1_60_10_species)) %do% sister(R40_10_tree,R_co1_60_10_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_60_10_List [(RefTree_R_co1_60_10_List %in% R_40_co1_60_10_List )] #603
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_60_10_List [!(RefTree_R_co1_60_10_List %in% R_40_co1_60_10_List )] #2109


#bb 20% tree when placed 80% co1

RefTree_R_co1_80_1_List <- foreach(i=1:length(R_co1_80_1_species)) %do% sister(ReferenceTree,R_co1_80_1_species[i],type="terminal",label=T)
R_20_co1_80_1_List <- foreach(i=1:length(R_co1_80_1_species)) %do% sister(R20_1_tree,R_co1_80_1_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_1_List [(RefTree_R_co1_80_1_List %in% R_20_co1_80_1_List )] #299
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_1_List [!(RefTree_R_co1_80_1_List %in% R_20_co1_80_1_List )] #3317

RefTree_R_co1_80_2_List <- foreach(i=1:length(R_co1_80_2_species)) %do% sister(ReferenceTree,R_co1_80_2_species[i],type="terminal",label=T)
R_20_co1_80_2_List <- foreach(i=1:length(R_co1_80_2_species)) %do% sister(R20_2_tree,R_co1_80_2_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_2_List [(RefTree_R_co1_80_2_List %in% R_20_co1_80_2_List )] #290
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_2_List [!(RefTree_R_co1_80_2_List %in% R_20_co1_80_2_List )] #3326

RefTree_R_co1_80_3_List <- foreach(i=1:length(R_co1_80_3_species)) %do% sister(ReferenceTree,R_co1_80_3_species[i],type="terminal",label=T)
R_20_co1_80_3_List <- foreach(i=1:length(R_co1_80_3_species)) %do% sister(R20_3_tree,R_co1_80_3_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_3_List [(RefTree_R_co1_80_3_List %in% R_20_co1_80_3_List )] #325
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_3_List [!(RefTree_R_co1_80_3_List %in% R_20_co1_80_3_List )] #3291

RefTree_R_co1_80_4_List <- foreach(i=1:length(R_co1_80_4_species)) %do% sister(ReferenceTree,R_co1_80_4_species[i],type="terminal",label=T)
R_20_co1_80_4_List <- foreach(i=1:length(R_co1_80_4_species)) %do% sister(R20_4_tree,R_co1_80_4_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_4_List [(RefTree_R_co1_80_4_List %in% R_20_co1_80_4_List )] #335
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_4_List [!(RefTree_R_co1_80_4_List %in% R_20_co1_80_4_List )] #3281

RefTree_R_co1_80_5_List <- foreach(i=1:length(R_co1_80_5_species)) %do% sister(ReferenceTree,R_co1_80_5_species[i],type="terminal",label=T)
R_20_co1_80_5_List <- foreach(i=1:length(R_co1_80_5_species)) %do% sister(R20_5_tree,R_co1_80_5_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_5_List [(RefTree_R_co1_80_5_List %in% R_20_co1_80_5_List )] #344
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_5_List [!(RefTree_R_co1_80_5_List %in% R_20_co1_80_5_List )] #3272

RefTree_R_co1_80_6_List <- foreach(i=1:length(R_co1_80_6_species)) %do% sister(ReferenceTree,R_co1_80_6_species[i],type="terminal",label=T)
R_20_co1_80_6_List <- foreach(i=1:length(R_co1_80_6_species)) %do% sister(R20_6_tree,R_co1_80_6_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_6_List [(RefTree_R_co1_80_6_List %in% R_20_co1_80_6_List )] #260
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_6_List [!(RefTree_R_co1_80_6_List %in% R_20_co1_80_6_List )] #3356

RefTree_R_co1_80_7_List <- foreach(i=1:length(R_co1_80_7_species)) %do% sister(ReferenceTree,R_co1_80_7_species[i],type="terminal",label=T)
R_20_co1_80_7_List <- foreach(i=1:length(R_co1_80_7_species)) %do% sister(R20_7_tree,R_co1_80_7_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_7_List [(RefTree_R_co1_80_7_List %in% R_20_co1_80_7_List )] #307
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_7_List [!(RefTree_R_co1_80_7_List %in% R_20_co1_80_7_List )] #3309

RefTree_R_co1_80_8_List <- foreach(i=1:length(R_co1_80_8_species)) %do% sister(ReferenceTree,R_co1_80_8_species[i],type="terminal",label=T)
R_20_co1_80_8_List <- foreach(i=1:length(R_co1_80_8_species)) %do% sister(R20_8_tree,R_co1_80_8_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_8_List [(RefTree_R_co1_80_8_List %in% R_20_co1_80_8_List )] #316
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_8_List [!(RefTree_R_co1_80_8_List %in% R_20_co1_80_8_List )] #3300

RefTree_R_co1_80_9_List <- foreach(i=1:length(R_co1_80_9_species)) %do% sister(ReferenceTree,R_co1_80_9_species[i],type="terminal",label=T)
R_20_co1_80_9_List <- foreach(i=1:length(R_co1_80_9_species)) %do% sister(R20_9_tree,R_co1_80_9_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_9_List [(RefTree_R_co1_80_9_List %in% R_20_co1_80_9_List )] #312
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_9_List [!(RefTree_R_co1_80_9_List %in% R_20_co1_80_9_List )] #3304

RefTree_R_co1_80_10_List <- foreach(i=1:length(R_co1_80_10_species)) %do% sister(ReferenceTree,R_co1_80_10_species[i],type="terminal",label=T)
R_20_co1_80_10_List <- foreach(i=1:length(R_co1_80_10_species)) %do% sister(R20_10_tree,R_co1_80_10_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_80_10_List [(RefTree_R_co1_80_10_List %in% R_20_co1_80_10_List )] #335
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_80_10_List [!(RefTree_R_co1_80_10_List %in% R_20_co1_80_10_List )] #3281
#---------------------


#bb 99% tree when placed 1% co1
RefTree_R_co1_1_1_List <- foreach(i=1:length(R_co1_1_1_species)) %do% sister(ReferenceTree,R_co1_1_1_species[i],type="terminal",label=T)
R_99_co1_1_1_List <- foreach(i=1:length(R_co1_1_1_species)) %do% sister(R99_1_tree,R_co1_1_1_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_1_List [(RefTree_R_co1_1_1_List %in% R_99_co1_1_1_List )] #24
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_1_List [!(RefTree_R_co1_1_1_List %in% R_99_co1_1_1_List)] #21

RefTree_R_co1_1_2_List <- foreach(i=1:length(R_co1_1_2_species)) %do% sister(ReferenceTree,R_co1_1_2_species[i],type="terminal",label=T)
R_99_co1_1_2_List <- foreach(i=1:length(R_co1_1_2_species)) %do% sister(R99_2_tree,R_co1_1_2_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_2_List [(RefTree_R_co1_1_2_List %in% R_99_co1_1_2_List )] #22
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_2_List [!(RefTree_R_co1_1_2_List %in% R_99_co1_1_2_List)] #23

RefTree_R_co1_1_3_List <- foreach(i=1:length(R_co1_1_3_species)) %do% sister(ReferenceTree,R_co1_1_3_species[i],type="terminal",label=T)
R_99_co1_1_3_List <- foreach(i=1:length(R_co1_1_3_species)) %do% sister(R99_3_tree,R_co1_1_3_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_3_List [(RefTree_R_co1_1_3_List %in% R_99_co1_1_3_List )] #23
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_3_List [!(RefTree_R_co1_1_3_List %in% R_99_co1_1_3_List)] #22

RefTree_R_co1_1_4_List <- foreach(i=1:length(R_co1_1_4_species)) %do% sister(ReferenceTree,R_co1_1_4_species[i],type="terminal",label=T)
R_99_co1_1_4_List <- foreach(i=1:length(R_co1_1_4_species)) %do% sister(R99_4_tree,R_co1_1_4_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_4_List [(RefTree_R_co1_1_4_List %in% R_99_co1_1_4_List )] #21
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_4_List [!(RefTree_R_co1_1_4_List %in% R_99_co1_1_4_List)] #24

RefTree_R_co1_1_5_List <- foreach(i=1:length(R_co1_1_5_species)) %do% sister(ReferenceTree,R_co1_1_5_species[i],type="terminal",label=T)
R_99_co1_1_5_List <- foreach(i=1:length(R_co1_1_5_species)) %do% sister(R99_5_tree,R_co1_1_5_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_5_List [(RefTree_R_co1_1_5_List %in% R_99_co1_1_5_List )] #25
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_5_List [!(RefTree_R_co1_1_5_List %in% R_99_co1_1_5_List)] #20

RefTree_R_co1_1_6_List <- foreach(i=1:length(R_co1_1_6_species)) %do% sister(ReferenceTree,R_co1_1_6_species[i],type="terminal",label=T)
R_99_co1_1_6_List <- foreach(i=1:length(R_co1_1_6_species)) %do% sister(R99_6_tree,R_co1_1_6_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_6_List [(RefTree_R_co1_1_6_List %in% R_99_co1_1_6_List )] #31
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_6_List [!(RefTree_R_co1_1_6_List %in% R_99_co1_1_6_List)] #14

RefTree_R_co1_1_7_List <- foreach(i=1:length(R_co1_1_7_species)) %do% sister(ReferenceTree,R_co1_1_7_species[i],type="terminal",label=T)
R_99_co1_1_7_List <- foreach(i=1:length(R_co1_1_7_species)) %do% sister(R99_7_tree,R_co1_1_7_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_7_List [(RefTree_R_co1_1_7_List %in% R_99_co1_1_7_List )] #32
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_7_List [!(RefTree_R_co1_1_7_List %in% R_99_co1_1_7_List)] #13

RefTree_R_co1_1_8_List <- foreach(i=1:length(R_co1_1_8_species)) %do% sister(ReferenceTree,R_co1_1_8_species[i],type="terminal",label=T)
R_99_co1_1_8_List <- foreach(i=1:length(R_co1_1_8_species)) %do% sister(R99_8_tree,R_co1_1_8_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_8_List [(RefTree_R_co1_1_8_List %in% R_99_co1_1_8_List )] #21
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_8_List [!(RefTree_R_co1_1_8_List %in% R_99_co1_1_8_List)] #24

RefTree_R_co1_1_9_List <- foreach(i=1:length(R_co1_1_9_species)) %do% sister(ReferenceTree,R_co1_1_9_species[i],type="terminal",label=T)
R_99_co1_1_9_List <- foreach(i=1:length(R_co1_1_9_species)) %do% sister(R99_9_tree,R_co1_1_9_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_9_List [(RefTree_R_co1_1_9_List %in% R_99_co1_1_9_List )] #24
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_9_List [!(RefTree_R_co1_1_9_List %in% R_99_co1_1_9_List)] #21


RefTree_R_co1_1_10_List <- foreach(i=1:length(R_co1_1_10_species)) %do% sister(ReferenceTree,R_co1_1_10_species[i],type="terminal",label=T)
R_99_co1_1_10_List <- foreach(i=1:length(R_co1_1_10_species)) %do% sister(R99_10_tree,R_co1_1_10_species[i],type="terminal",label=T)

#get the number of species have similar sisters by comparing with reference tree
RefTree_R_co1_1_10_List [(RefTree_R_co1_1_10_List %in% R_99_co1_1_10_List )] #23
#get the number of species doesn't have similar sisters by comparing with reference tree
RefTree_R_co1_1_10_List [!(RefTree_R_co1_1_10_List %in% R_99_co1_1_10_List)] #22

# #checking
# a <- list(a = 1:8,b= 2:3)
# b <- list(a = 2:9,c=2:3)
# a[(a %in% b )] 

#speciesList  [(speciesList   %in% RefTree_speciesList)]

class(Species_df)
Species_df
data <- c("Abalistes_stellaris","Abbottina_rivularis")
getSisters(tree,data,mode="label")


## starting here
dd<-lapply(1:tree$Nnode+Ntip(tree),function(n,t)
  Descendants(t,n)[[1]],t=tree)
nodes<-c(1:tree$Nnode+Ntip(tree))[which(sapply(dd,
                                               length)==3)]
sisters<-t(sapply(nodes,function(n,t) 
  t$tip.label[Descendants(t,n)[[1]]],t=tree))
rownames(sisters)<-nodes
sisters
#-------------
dd<-lapply(1:tree$Nnode+Ntip(tree),function(n,t)
  Descendants(t,n)[[1]],t=tree)
nodes<-c(1:tree$Nnode+Ntip(tree))[which(sapply(dd,length)==2)]
sisters<-t(sapply(nodes,function(n,t)
  t$tip.label[Descendants(t,n)[[1]]],t=tree))
#-------------

#checking
tree<-rtree(n=12)
plotTree(tree,node.numbers=TRUE)
getSisters(tree,"t4",mode="label")
getSisters(tree,23,"label")$tips

