###############################
## Minecraft Version 1.13.2
##   Height Limit
## Author:
##   KizahashiLuca
## Date: 
##   Oct 27, 2018
## Version:
##   0.0.5
## Description:
##   while boring, detect
##    spawn point.
###############################

execute at @e[type=minecraft:area_effect_cloud, name=tmp_cloud] run teleport @e[type=minecraft:area_effect_cloud, name=tmp_cloud] ~ ~-1 ~