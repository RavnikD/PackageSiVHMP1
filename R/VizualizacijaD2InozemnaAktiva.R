library("ggplot2")
library("tidyverse")
library("lubridate")

plotInozemnaAktiva1<- function(stupac, Naziv){
  
  date_df <- InozemnaAktiva1 %>%
    mutate(Datum = paste0(Datum, "-01")) %>%
    mutate(Datum = lubridate::ymd(Datum)) 
  
  
  PasivneKamatneStope1 <- ggplot(data =  date_df, aes(x=Datum, y=stupac, group = 1)) +
    geom_line() + labs(x = "Datum", y = Naziv, title = paste("Vizualization", Naziv)) + geom_point()
  
  
  PasivneKamatneStope1 <- PasivneKamatneStope1 +
    theme_update(plot.title = element_text(hjust = 0.5))
  
  
  return(PasivneKamatneStope1)
  
}


plotInozemnaAktiva2<- function(stupac, Naziv){
  
  date_df <- InozemnaAktiva2 %>%
    mutate(Datum = paste0(Datum, "-01")) %>%
    mutate(Datum = lubridate::ymd(Datum)) 
  
  
  PasivneKamatneStope1 <- ggplot(data =  date_df, aes(x=Datum, y=stupac, group = 1)) +
    geom_line() + labs(x = "Datum", y = Naziv, title = paste("Vizualization", Naziv)) + geom_point()
  
  
  PasivneKamatneStope1 <- PasivneKamatneStope1 +
    theme_update(plot.title = element_text(hjust = 0.5))
  
  
  return(PasivneKamatneStope1)
  
}


plotInozemnaAktiva3<- function(stupac, Naziv){
  
  date_df <- InozemnaAktiva3 %>%
    mutate(Datum = paste0(Datum, "-01")) %>%
    mutate(Datum = lubridate::ymd(Datum)) 
  
  
  PasivneKamatneStope1 <- ggplot(data =  date_df, aes(x=Datum, y=stupac, group = 1)) +
    geom_line() + labs(x = "Datum", y = Naziv, title = paste("Vizualization", Naziv)) + geom_point()
  
  
  PasivneKamatneStope1 <- PasivneKamatneStope1 +
    theme_update(plot.title = element_text(hjust = 0.5))
  
  
  return(PasivneKamatneStope1)
  
}