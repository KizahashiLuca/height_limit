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
##   Start game.
###############################

scoreboard players set Limit Height 5
scoreboard players set @a Death 1
scoreboard players set @a WhileBoring 1
scoreboard players set @a Penalty 0

execute at @r[limit=1] run function height_limit:decide_tower