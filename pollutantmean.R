
pollutantmean<-function(directory,pollutant,id=1:332){
  
  allfiles<-list.files(paste(getwd(),"/",directory, sep = ""))
  x<-c()
  y<-c()
  for(i in id){
    path<-paste(getwd(),"/",directory,"/",allfiles[i], sep = "")
    y<-sum(na.omit(read.csv(path)[[pollutant]]),y)
    x<-sum(length(na.omit(read.csv(path)[[pollutant]])),x)
  }
  y/x
  
  # mean(x,na.rm = TRUE)
  # allvalues<-merge(x[0],x[i])
  # nrow(allvalues)
  ## mean(allvalues[[pollutant]],na.rm = TRUE)
}