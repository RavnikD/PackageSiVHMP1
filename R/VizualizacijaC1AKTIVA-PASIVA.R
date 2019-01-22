library("ggplot2")
library("tidyverse")
library("lubridate")

plotBilancaaktiva<- function(stupac, Naziv){
  
  date_df <- Bilancaaktiva %>%
    mutate(Datum = paste0(Datum, "-01")) %>%
    mutate(Datum = lubridate::ymd(Datum)) 
  
  
  Bilancaaktiva <- ggplot(data =  date_df, aes(x=Datum, y=stupac, group = 1)) +
    geom_line() + labs(x = "Datum", y = Naziv, title = paste("Vizualization", Naziv)) + geom_point()
  
  
  Bilancaaktiva <- Bilancaaktiva +
    theme_update(plot.title = element_text(hjust = 0.5))
  
  
  return(Bilancaaktiva)
  
}

plotBilancapassiva<- function(stupac, Naziv){
  
  date_df <- Bilancapassiva %>%
    mutate(Datum = paste0(Datum, "-01")) %>%
    mutate(Datum = lubridate::ymd(Datum)) 
  
  
  Bilancapassiva <- ggplot(data =  date_df, aes(x=Datum, y=stupac, group = 1)) +
    geom_line() + labs(x = "Datum", y = Naziv, title = paste("Vizualization", Naziv)) + geom_point()
  
  
  Bilancapassiva <- Bilancapassiva +
    theme_update(plot.title = element_text(hjust = 0.5))
  
  
  return(Bilancapassiva)
  
}