library("ggplot2")
library("tidyverse")
library("lubridate")

plotD10Inozmenapasiva<- function(stupac, Naziv){
  
  date_df <- D10 %>%
    mutate(Datum = paste0(Datum, "-01")) %>%
    mutate(Datum = lubridate::ymd(Datum)) 
  
  
  D10 <- ggplot(data =  date_df, aes(x=Datum, y=stupac, group = 1)) +
    geom_line() + labs(x = "Datum", y = Naziv, title = paste("Vizualization", Naziv)) + geom_point()
  
  
  D10 <- D10 +
    theme_update(plot.title = element_text(hjust = 0.5))
  
  
  return(D10)
  
}