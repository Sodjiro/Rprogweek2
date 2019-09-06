
pollutantmean<-function(directory,pollutant,id){
  allfiles<-list.files(paste(getwd(),"/",directory, sep = ""))
  files<-allfiles[id,]
  for(i in id){
    path<-paste(getwd(),"/",directory,"/",files[i], sep = "")
  x<-read.csv(path)[[pollutant]]
  allvalues<-cbind(allvalues,x)
  }
  mean(allvalues)
}