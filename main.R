data <- read.csv("Patrimoine_Arbore.csv")

print(dim(data))
print(names(data))
print(str(data))

#conversion du type de données

# X : chr -> num
# created_date : chr -> date
# id_arbre : chr -> int
# dte_abattage : chr -> date
# last_edited_date : chr -> date
# CreationDate : chr -> date
# remarquable : chr -> logical ?

data$X <- as.double(data$X)#convertit en int (il n'y a plus la virgule)
data$created_date <- as.Date(data$created_date)
data$id_arbre <- as.numeric(data$id_arbre)
data$dte_abattage <- as.Date(data$dte_abattage)
data$last_edited_date <- as.Date(data$last_edited_date)
data$CreationDate <- as.Date(data$CreationDate)

print(str(data))
#print(methods(as))