#Import Documents Distances
dataF$ID=0:(nrow(dataF)-1)
selvars= c("ID","Year","Cited_by","Document_Type","Topic","Cluster")
write.table(dataF[,selvars],file="data/nodes.txt",sep="\t",row.names=FALSE,na="",quote=FALSE)

db="C:/Users/elecoutre/Dropbox/hackatons/dengue/gephi"
edges <- read.table(file.path(db,"listdocsim7.csv"),sep="\t",header=TRUE)
nodes <- read.table(file.path(db,"nodes.txt"),sep="\t",header=TRUE)
rownames(nodes)<- nodes$ID
edgesY=edges
edgesY$Year<- nodes[edges$Source,"Year"]
write.table(edgesY,file=file.path(db,"edgesY.csv"),sep=",",row.names=FALSE,na="")

lID <- rep(dataF$ID,sapply(lAuthors,length))
facts <- data.frame(ID=lID,Author=unlist(lAuthors))

ID.author=1000000+as.numeric(as.factor(facts$Author))
facts<- cbind(facts,IDauthor=ID.author)

gephi.edges <- facts[,c("ID","IDauthor")]
names(gephi.edges) <- c("Source","Target")
write.table(gephi.edges,file=file.path(db,"edges_authors_facts.txt"),sep="\t",row.names=FALSE,na="")


#dataF$ID=0:(nrow(dataF)-1)
selvars= c("ID","Year","Cited_by","Document_Type","Topic","Cluster")

data1= cbind(dataF[,selvars],Type="Paper")
data2=data1[FALSE,]
data2=data.frame(ID=unique(facts$IDauthor),Type="Author",Year=NA,Cited_by=NA, Document_Type=NA,Topic=NA,Cluster=NA)


gephi.nodes = rbind(data1,data2)

write.table(gephi.nodes,file=file.path(db,"nodes_authors_facts.txt"),sep="\t",row.names=FALSE,na="")

barplot(table(dataF[dataF$Year %in% c(2010:2016),"Year"]),main="Articles per year",col="#128F90")
