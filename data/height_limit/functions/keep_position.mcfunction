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
##   if exceeding limit,
##    reset position.
###############################

kill @e[type=minecraft:area_effect_cloud, name=tmp_cloud]
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"\"tmp_cloud\"",Radius:0f,Duration:32768}