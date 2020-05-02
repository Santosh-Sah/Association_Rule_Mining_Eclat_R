source("AssociationRuleMiningEclatUtils.R")
library(ggplot2)
library(arules)

#reading dataset 
associationRuleMiningEclatDataset = importAssociationRuleMiningEclatDataset("Market_Basket_Optimisation.csv")


#reading AssociationRuleMiningEclat rules
associationRuleMiningEclatRules = readRDS("AssociationRuleMiningEclatRules.RDS")

#create item frequency plot
visualizeAssociationRuleMiningEclatItemFrequencyPlot <- function(associationRuleMiningEclatDataset){
  
  png("AssociationRuleMiningEclatItemFrequencyPlot.png")
  
  itemFrequencyPlot(associationRuleMiningEclatDataset, topN = 10)
  
  dev.off()
  
}

#visualizing AssociationRuleMiningEclat rules
visualizeAssociationRuleMiningEclatRules <- function(associationRuleMiningEclatRules){
  
  write(associationRuleMiningEclatRules,
        file = "AssociationRuleMiningEclatRules.csv",
        sep = ",",
        quote = TRUE,
        row.names = FALSE)
  
}

#visualizeAssociationRuleMiningEclatItemFrequencyPlot(associationRuleMiningEclatDataset)
visualizeAssociationRuleMiningEclatRules(associationRuleMiningEclatRules)
