importAssociationRuleMiningEclatDataset <- function(associationRuleMiningEclatDatasetFileName) {
  
  #getting transaction from from AssociationRuleMiningEclat dataset
  #after getting the dataset create a sparx mattrix
  associationRuleMiningEclatDataset = read.transactions('Market_Basket_Optimisation.csv', sep = ',', rm.duplicates = TRUE)
  
  return (associationRuleMiningEclatDataset)
  
}

#Save AssociationRuleMiningEclat rules
saveAssociationRuleMiningEclatRules <- function(associationRuleMiningEclatRules) {
  
  saveRDS(associationRuleMiningEclatRules, file = "AssociationRuleMiningEclatRules.RDS")
}