### reminder() documentation

reminder <- function() {
  header <- "To-Do for Today:"
  submit <- "- Submit programming assignment"
  bake <- "- Bake some cookies"
  shopping <- "- Buy some veggies for curry"
  bday <- "- Congratulate Alex for b-day!"
  duolingo <- "- 3 French lessons on Duolingo"
  things = paste(header, submit, bake, shopping, bday, duolingo, sep="\n")
  cat(things[1])
}

reminder()
