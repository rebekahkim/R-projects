drug_data <- read.table("Example23.txt", header=T)

full.model <- lm(Final.HR~Initial.HR+Dose1+Dose2+Age+Height+Weight+Gender, data =drug_data)
summary(full.model)

reduced.model.1 <-lm(Final.HR~Initial.HR+Age+Height+Weight+Gender, data =drug_data)
summary(reduced.model)

