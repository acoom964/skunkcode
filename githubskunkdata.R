#2. Reclassify using the same scheme as in the previous questions
ogsi <- c(0,39,1, 39,80,2, 81,198,3, 199,201,4) #In order of human impact
#NLCD categories: 
#11-12= water and snow, 21-24=developed land, 31=barren, 41-43=deciduous forest, 51-52=Scrub, 
#71-74=herbaceous, 81-82=Pasture and cultivated, 90-95=wetlands
rclmat <- matrix( m, ncol=3, byrow=TRUE) #matrix used for reclassification. First two columns are range of data to be reclassified, last column is new class
landscape <- reclassify(combinedraster, rclmat) #reclassifies NLCD to be only 7 classes as in the previous excercise
lsm_c_ca(landscape)
help("lsm_c_ca")
old <- landscapenad83== 4 
plot(old)
summary(landscape)
list_lsm()
results2 <- sample_lsm(landscape= landscapenad83, y=restsites2, what="lsm_c_ca", shape="circle", size=100)
summary(results)
check_landscape(landscapenad83)
proj4string(landscape)
plot(landscapenad83)

plot(restsites2, add = TRUE)
landscapenad83 <- projectRaster(landscape, r2,method = "ngb" )
help("projectRaster")
pts_extract <- sample_lsm(landscape, y= restsites2, what ="lsm_p_area")
help("extract_lsm")
<- data.frame (subset (pts_extract, id>1)) #subsets to only points found in forest
help("extract_lsm")
summary(r2)
head(r2)
heads(r2)
l