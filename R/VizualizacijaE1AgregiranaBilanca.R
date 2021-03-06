library("ggplot2")
library("tidyverse")
library("lubridate")

plotE1Agregiranabilanca<- function(stupac, Naziv){
  
  date_df <- E1 %>%
    mutate(Datum = paste0(Datum, "-01")) %>%
    mutate(Datum = lubridate::ymd(Datum)) 
  
  
  E1 <- ggplot(data =  date_df, aes(x=Datum, y=stupac, group = 1)) +
    geom_line() + labs(x = "Datum", y = Naziv, title = paste("Vizualization", Naziv)) + geom_point()
  
  
  E1 <- E1 +
    theme_update(plot.title = element_text(hjust = 0.5))
  
  
  return(E1)
  
}