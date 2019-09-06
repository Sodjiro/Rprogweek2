corr<-function(directory,threshold=0){
  rangefiles<-complete(directory)
  abovethreshold<-rangefiles[rangefiles[,"nobs"]>threshold,]
  if (threshold>max(rangefiles[,"nobs"])) {
    c()
    
  }  else{
    
  rel<-c()
  for(i in 1:length(abovethreshold[,"id"])){
  x<-na.omit(read.csv(paste(getwd(),"/",directory,"/",sprintf("%03d",abovethreshold[i,"id"]),".csv", sep = "")))
  ys<-x["sulfate"]
  yn<-x["nitrate"]
  rel[i]<-cor(ys,yn)
  }
  rel
}

}