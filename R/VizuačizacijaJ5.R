library("ggplot2")
library("tidyverse")
library("lubridate")

plotJ5<- function(stupac, Naziv){
  
  date_df <- J5 %>%
    mutate(Godina = paste0(Godina, "-01")) %>%
    mutate(Godina = lubridate::ymd(Godina)) 
  
  
  J5 <- ggplot(data =  date_df, aes(x=Godina, y=stupac, group = 1)) +
    geom_line() + labs(x = "Godina", y = Naziv, title = paste("Vizualization", Naziv)) + geom_point()
  
  
  J5 <- J5 +
    theme_update(plot.title = element_text(hjust = 0.5))
  
  
  return(J5)
  
}