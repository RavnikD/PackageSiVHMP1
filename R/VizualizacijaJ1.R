library("ggplot2")
library("tidyverse")
library("lubridate")

plotJ1<- function(stupac, Naziv){
  
  date_df <- J1 %>%
    mutate(Datum = paste0(Datum, "-01")) %>%
    mutate(Datum = lubridate::ymd(Datum)) 
  
  
  J1 <- ggplot(data =  date_df, aes(x=Datum, y=stupac, group = 1)) +
    geom_line() + labs(x = "Datum", y = Naziv, title = paste("Vizualization", Naziv)) + geom_point()
  
  
  J1 <- J1 +
    theme_update(plot.title = element_text(hjust = 0.5))
  
  
  return(J1)
  
}