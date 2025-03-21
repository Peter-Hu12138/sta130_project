library(tidyverse)
setwd("~/sta130_project/")
services <- read_csv("Service_Deliveries.csv")
members_with_record_service <- (services |> group_by(member_id) |> summarise())$member_id
member_background <- read_csv("wrangled_Member_Backgournd.csv")
member_background |> filter(is.na(number_of_present_service_deliveries))
na_present_deliveries <- member_background |> filter(is.na(number_of_present_service_deliveries))
na_present_deliveries <- member_background |> filter(is.na(number_of_present_service_deliveries))
na_present_deliveries_people <- na_present_deliveries$member_id
for(na_person in na_present_deliveries_people){
if(na_person %in% members_with_record_service){
print("an na_person has record")
}
}
