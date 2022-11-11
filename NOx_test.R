library(plotly)
### 导入R包
library(RColorBrewer)

### 查看配色方案
display.brewer.all()

data<-train_R[,]
data<-trainreal[,]
data[,2]=-log10(data[,2])

data[,3]=log2(data[,3])
#data[,4]=log10(data[,4])
#data[,4]=scale(data[,4],center=T,scale=T)*1000
data=data[1:200,]
MAX=data[1,]

summary(data)
data=na.omit(data)



image<-plot_ly(data=data,x=~time_step,y=~hidden_node,z = ~loss,name = 'Nox')%>%
  add_markers(color=~learn_rate,colors="Set2")%>%
  add_trace(x=10,y=4,z=0.001051509,colormodel='rgba(255, 255, 255,1)')
image
  #add_point(x=6,y=4,z=-210.9840,color='rgba(255, 0, 0, .9)')
















