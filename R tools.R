### - ### - ### - ### - ### - ### - ### - ### - ### - ### - ### - ### - ###
### - ### - ### - ### - ### - ### R TOOLS ### - ### - ### - ### - ### - ###
### - ### - ### - ### - ### - ### - ### - ### - ### - ### - ### - ### - ###



			#Soft Instalation - R Update Version
# installing/loading the package:
if(!require(installr)) {
install.packages("installr"); require(installr)} #load / install+load installr 
updateR()
## get packages installed
packs = as.data.frame(installed.packages(.libPaths()[1]), stringsAsFactors = F)
## and now re-install install packages using install.packages()
install.packages(packs$Package)



			#Install All Packages
availablePackages <- available.packages()[,1]
install.packages(availablePackages)
installedPackages <- .packages(all.available = TRUE)



			#Update All Packages
update.packages()
#update.packages(ask = FALSE)



			#Unistall All Packages
ip <- as.data.frame(installed.packages())
ip <- subset(ip, !grepl("MRO", ip$LibPath))
# if you use MRO, make sure that no packages in this library will be removed
ip <- ip[!(ip[,"Priority"] %in% c("base", "recommended")),]
# we don't want to remove base or recommended packages either\
path.lib <- unique(ip$LibPath)
# determine the library where the packages are installed
pkgs.to.remove <- ip[,1]
# create a vector with all the names of the packages you want to remove
sapply(pkgs.to.remove, remove.packages, lib = path.lib)# remove the packages
