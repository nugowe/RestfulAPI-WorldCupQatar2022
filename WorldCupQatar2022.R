library(rvest)
library(polite)
library(magrittr)
library(dplyr)
library(plumber)

url <- "https://en.wikipedia.org/wiki/2022_FIFA_World_Cup_squads"

session = bow(user_agent = "Qatar2022 Data_scrape", url)


#GROUPA
Ecuador <- scrape(session) %>% html_nodes("table.sortable:nth-child(13)") %>% html_table()
Netherlands <- scrape(session) %>% html_nodes("table.sortable:nth-child(18)") %>% html_table()
Qatar <- scrape(session) %>% html_nodes("table.sortable:nth-child(23)") %>% html_table()
Senegal <- scrape(session) %>% html_nodes("table.sortable:nth-child(28)") %>% html_table()

#GROUPB
England <- scrape(session) %>% html_nodes("table.sortable:nth-child(35)") %>% html_table()
Iran <- scrape(session) %>% html_nodes("table.sortable:nth-child(41)") %>% html_table()
USA <- scrape(session) %>% html_nodes("table.sortable:nth-child(47)") %>% html_table()
Wales <- scrape(session) %>% html_nodes("table.sortable:nth-child(52)") %>% html_table()

#GROUPC
Argentina <- scrape(session) %>% html_nodes("table.sortable:nth-child(58)") %>% html_table()
Mexico=scrape(session) %>% html_nodes("table.sortable:nth-child(63)") %>% html_table()
Poland=scrape(session) %>% html_nodes("table.sortable:nth-child(68)") %>% html_table()
SaudiArabia=scrape(session) %>% html_nodes("table.sortable:nth-child(73)") %>% html_table()

#GROUPD
Australia <- scrape(session) %>% html_nodes("table.sortable:nth-child(79)") %>% html_table()
Denmark <- scrape(session) %>% html_nodes("table.sortable:nth-child(84)") %>% html_table()
France <- scrape(session) %>% html_nodes("table.sortable:nth-child(89)") %>% html_table()
Tunisia <- scrape(session) %>% html_nodes("table.sortable:nth-child(94)") %>% html_table()

#GROUPE
CostaRica <- scrape(session) %>% html_nodes("table.sortable:nth-child(100)") %>% html_table()
Germany <- scrape(session) %>% html_nodes("table.sortable:nth-child(105)") %>% html_table()
Japan <- scrape(session) %>% html_nodes("table.sortable:nth-child(110)") %>% html_table()
Spain <- scrape(session) %>% html_nodes("table.sortable:nth-child(115)") %>% html_table()

#GROUPF
Belgium <- scrape(session) %>% html_nodes("table.sortable:nth-child(121)") %>% html_table()
Canada <- scrape(session) %>% html_nodes("table.sortable:nth-child(126)") %>% html_table()
Croatia <- scrape(session) %>% html_nodes("table.sortable:nth-child(131)") %>% html_table()
Morocco <- scrape(session) %>% html_nodes("table.sortable:nth-child(136)") %>% html_table()

#GROUPG
Brazil <- scrape(session) %>% html_nodes("table.sortable:nth-child(142)") %>% html_table()
Cameroon <- scrape(session) %>% html_nodes("table.sortable:nth-child(147)") %>% html_table()
Serbia <- scrape(session) %>% html_nodes("table.sortable:nth-child(152)") %>% html_table()
Switzerland <- scrape(session) %>% html_nodes("table.sortable:nth-child(157)") %>% html_table()

#GROUPH
Ghana <- scrape(session) %>% html_nodes("table.sortable:nth-child(163)") %>% html_table()
Portugal <- scrape(session) %>% html_nodes("table.sortable:nth-child(168)") %>% html_table()
Southkorea <- scrape(session) %>% html_nodes("table.sortable:nth-child(173)") %>% html_table()
Uruguay <- scrape(session) %>% html_nodes("table.sortable:nth-child(178)") %>% html_table()


GROUPA <- c("Ecuador","Netherlands","Qatar","Senegal")

GROUPB <- c("England","Iran","UnitedStates","Wales")

GROUPC <- c("Argentina","Mexico","Poland","SaudiArabia")

GROUPD <- c("Australia","Denmark","France","Tunisia")

GROUPE <- c("CostaRica","Germany","Japan","Spain")

GROUPF <- c("Belgium","Canada","Croatia","Morocco")

GROUPG <- c("Brazil","Cameroon","Serbia","Switzerland")

GROUPH <- c("Ghana","Portual","SouthKorea","Uruguay")

#* @get /groups
#* @param group
function(group) {
  if(group == "A"){
    return(GROUPA)
  }else if(group == "B"){
    return(GROUPB)
  }else if(group == "C"){
    return(GROUPC)
  }else if(group == "D"){
    return(GROUPD)
  }else if(group == "E"){
    return(GROUPE)
  }else if(group == "F"){
    return(GROUPF)
  }else if(group == "G"){
    return(GROUPG)
  }else if(group == "H"){
    return(GROUPH)
  }else{
    message("The Group selected does not exist! | Please check for typos and try again!")
  }
}

#* @get /teams
#* @param team
function(team) {
  if(team == "Ecuador"){
    return(Ecuador)
  }else if(team == "Netherlands"){
    return(Netherlands)
  }else if(team == "Qatar"){
    return(Qatar)
  }else if(team == "Senegal"){
    return(Senegal)
  }else if(team == "Australia"){
    return(Australia)
  }else if(team == "Denmark"){
    return(Denmark)
  }else if(team == "France"){
    return(France)
  }else if(team == "Tunisia"){
    return(Tunisia)
  }else if(team == "CostaRica"){
    return(CostaRica)
  }else if(team == "Germany"){
    return(Germany)
  }else if(team == "Japan"){
    return(Japan)
  }else if(team == "Spain"){
    return(Spain)
  }else if(team == "Belgium"){
    return(Belgium)
  }else if(team == "Canada"){
    return(Canada)
  }else if(team == "Croatia"){
    return(Croatia)
  }else if(team == "Morocco"){
    return(Morocco)
  }else if(team == "Brazil"){
    return(Brazil)
  }else if(team == "Cameroon"){
    return(Cameroon)
  }else if(team == "Serbia"){
    return(Serbia)
  }else if(team == "Switzerland"){
    return(Switzerland)
  }else if(team == "Ghana"){
    return(Ghana)
  }else if(team == "Portugal"){
    return(Portugal)
  }else if(team == "SouthKorea"){
    return(SouthKorea)
  }else if(team == "Uruguay"){
    return(Uruguay)
  }else if(team == "Argentina"){
    return(Argentina)
  }else if(team == "Poland"){
    return(Poland)
  }else if(team == "Mexico"){
    return(Mexico)
  }else if(team == "SaudiArabia"){
    return(SaudiArabia)
  }else if(team == "USA"){
    return(USA)
  }else{
    message("The Team selected is not participating in the Qatar FIFA WORLD CUP 2022 || Cross check for typos! | Teams starting with the first letter in an uppercase format")
  }  
}




GROUPA <- c("Ecuador","Netherlands","Qatar","Senegal")

GROUPB <- c("England","Iran","UnitedStates","Wales")

GROUPC <- c("Argentina","Mexico","Poland","SaudiArabia")

GROUPD <- c("Australia","Denmark","France","Tunisia")

GROUPE <- c("CostaRica","Germany","Japan","Spain")

GROUPF <- c("Belgium","Canada","Croatia","Morocco")

GROUPG <- c("Brazil","Cameroon","Serbia","Switzerland")

GROUPH <- c("Ghana","Portual","SouthKorea","Uruguay")

#* @get /groups
#* @param group
function(group) {
  if(group == "A"){
    return(GROUPA)
  }else if(group == "B"){
    return(GROUPB)
  }else if(group == "C"){
    return(GROUPC)
  }else if(group == "D"){
    return(GROUPD)
  }else if(group == "E"){
    return(GROUPE)
  }else if(group == "F"){
    return(GROUPF)
  }else if(group == "G"){
    return(GROUPG)
  }else if(group == "H"){
    return(GROUPH)
  }else{
    message("The Group selected does not exist! | Please check for typos and try again! | Thanks!")
  }
}

#* @get /teams
#* @param team
function(team) {
  if(team == "Ecuador"){
    return(Ecuador)
  }else if(team == "Netherlands"){
    return(Netherlands)
  }else if(team == "Qatar"){
    return(Qatar)
  }else if(team == "Senegal"){
    return(Senegal)
  }else if(team == "Australia"){
    return(Australia)
  }else if(team == "Denmark"){
    return(Denmark)
  }else if(team == "France"){
    return(France)
  }else if(team == "Tunisia"){
    return(Tunisia)
  }else if(team == "CostaRica"){
    return(CostaRica)
  }else if(team == "Germany"){
    return(Germany)
  }else if(team == "Japan"){
    return(Japan)
  }else if(team == "Spain"){
    return(Spain)
  }else if(team == "Belgium"){
    return(Belgium)
  }else if(team == "Canada"){
    return(Canada)
  }else if(team == "Croatia"){
    return(Croatia)
  }else if(team == "Morocco"){
    return(Morocco)
  }else if(team == "Brazil"){
    return(Brazil)
  }else if(team == "Cameroon"){
    return(Cameroon)
  }else if(team == "Serbia"){
    return(Serbia)
  }else if(team == "Switzerland"){
    return(Switzerland)
  }else if(team == "Ghana"){
    return(Ghana)
  }else if(team == "Portugal"){
    return(Portugal)
  }else if(team == "SouthKorea"){
    return(SouthKorea)
  }else if(team == "Uruguay"){
    return(Uruguay)
  }else if(team == "Argentina"){
    return(Argentina)
  }else if(team == "Poland"){
    return(Poland)
  }else if(team == "Mexico"){
    return(Mexico)
  }else if(team == "SaudiArabia"){
    return(SaudiArabia)
  }else{
    message("The Team selected is not participating in the Qatar FIFA WORLD CUP 2022 | Cross check for typos! | Teams starting with the first letter in an uppercase format")
  }  
}


