###############################
## Minecraft Version 1.13.1
##   Height Limit
## Author:
##   KizahashiLuca
## Date: 
##   Oct 22, 2018
## Version:
##   0.0.2
## Description:
##   run function on every tick.
###############################

execute as @a if entity @e[type=minecraft:player, gamemode=survival] run function height_limit:constraint