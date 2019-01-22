library("ggplot2")
library("tidyverse")
library("lubridate")

plotKonsolidiranabilancaD1<- function(stupac, Naziv){
  
  date_df <- D1 %>%
    mutate(Datum = paste0(Datum, "-01")) %>%
    mutate(Datum = lubridate::ymd(Datum)) 
  
  
  D1 <- ggplot(data =  date_df, aes(x=Datum, y=stupac, group = 1)) +
    geom_line() + labs(x = "Datum", y = Naziv, title = paste("Vizualization", Naziv)) + geom_point()
  
  
  D1 <- D1 +
    theme_update(plot.title = element_text(hjust = 0.5))
  
  
  return(D1)
  
}

plotKonsolidiranabilancaD1a<- function(stupac, Naziv){
  
  date_df <- D1a %>%
    mutate(Datum = paste0(Datum, "-01")) %>%
    mutate(Datum = lubridate::ymd(Datum)) 
  
  
  D1a <- ggplot(data =  date_df, aes(x=Datum, y=stupac, group = 1)) +
    geom_line() + labs(x = "Datum", y = Naziv, title = paste("Vizualization", Naziv)) + geom_point()
  
  
  D1a <- D1a +
    theme_update(plot.title = element_text(hjust = 0.5))
  
  
  return(D1a)
  
}