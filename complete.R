
complete<-function(directory,id=1:332){
  
  allfiles<-list.files(paste(getwd(),"/",directory, sep = ""))
  x<-matrix(nrow = length(id),ncol=2)
  colnames(x)<-c("id","nobs")
  b<-0
  for(i in id){
    path<-paste(getwd(),"/",directory,"/",allfiles[i], sep = "")
    
    s<-length(na.omit(read.csv(path)[["sulfate"]]))
    n<-length(na.omit(read.csv(path)[["nitrate"]]))
    
    x[b+1,1]<-i
    x[b+1,2]<-min(s,n)
    b<-b+1
    }
  x
  
}