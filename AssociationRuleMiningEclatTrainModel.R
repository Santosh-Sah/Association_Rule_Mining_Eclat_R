source("AssociationRuleMiningEclatUtils.R")
library(arules)

#reading dataset 
associationRuleMiningEclatDataset = importAssociationRuleMiningEclatDataset("Market_Basket_Optimisation.csv")

set.seed(1234)

# Fitting AssociationRuleMiningEclat to dataset
associationRuleMiningEclatRules = eclat(data = associationRuleMiningEclatDataset, parameter = list(support =0.004, minlen = 2))

#saving AssociationRuleMiningEclat rules
saveAssociationRuleMiningEclatRules(associationRuleMiningEclatRules)