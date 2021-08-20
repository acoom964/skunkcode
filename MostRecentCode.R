#####################
#organizing your scripts

#######
#load packages

#######
#load data

m2 <- c(0,22.7,1, 22.7,30.8,2, 30.8,39.1,3, 39.1,47,4, 47,130,5) #In order of human impact
#From Davis et all. categories: 
#0-22.7 = OGSI 80, 22.7-30.8= OGSI 120, 30.8-39.1 = OGSI 160, 39.1-47 = OGSI 200
rclmat2 <- matrix(m2, ncol=3, byrow=TRUE) #matrix used for reclassification. First two columns are range of data to be reclassified, last column is new class
landscapeogsi <- reclassify(rogsi, rclmat2) #reclassifies NLCD to be only 7 classes as in the previous excercise
lsm_c_ca(landscape)
summary(rogsi)
rclmat2
help("lsm_c_ca")
old <- landscapenad83== 4
summary(r2)
summary(landscapeogsi)
summary(results2)
plot(old)
summary(landscape)
list_lsm()
resultsogsi <- sample_lsm(landscape= landscapeogsi, y=restsites2, what="lsm_c_ca", shape="circle", size=100)
summary(resultsogsi)
totalarea <- data.frame (resultsogsi %>%
                           group_by(plot_id) %>% 
                           summarise(totalarea = sum (value)))
resultsogsi2 <- merge(resultsogsi, totalarea, by ="plot_id", all.x = T)
resultsogsi2 $percentclass <- (resultsogsi2$value/resultsogsi2$totalarea)
head(resultsogsi2)
majorityclass <- resultsogsi2 [resultsogsi2$percentclass>.5,]
ggplot(data= majorityclass)+ geom_histogram(aes(x=class))
require(raster)
require(rgdal)
require(sf)

extract(landscapeogsi, restsites2)
proj4string(landscapeogsi)
proj4string(restsites2)



check_landscape(rogsi)
check_Landscape(restsites2)
plot(r2)
proj4string(landscape)
plot(landscapenad83)
View(results2)
library(tidyr)
results2$percentclass=results2$value/3.12
View(results2)

results2%>%
  group_by(class)%>%
  summarise(mean(percentclass))
str(results2)
22 ,45, 
plot(restsites2, add = TRUE)
landscapeogsinad <- projectRaster(landscapeogsi, r2,method = "ngb" )
proj4string(landscape)
proj4string(landscapenad83)
proj4string(r2)
help("projectRaster")
pts_extract <- sample_lsm(landscape, y= restsites2, what ="lsm_p_area")
help("extract_lsm")
<- data.frame (subset (pts_extract, id>1)) #subsets to only points found in forest
help("extract_lsm")
proj4string(combinedraster)
check_landscape(r2)
head(results2)


plot(landscapeogsi)
plot(restsites2, pch= 16, cex = 0.2, col= "red", add = TRUE)
l
require(usethis)
library(usethis)
usethis::create_project("untitled2r2")
usethis::browse_github_pat()