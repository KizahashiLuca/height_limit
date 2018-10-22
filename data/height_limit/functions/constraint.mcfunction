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
##   the basis of function.
###############################

execute store result score @s Height run data get entity @s Pos[1]
execute if score @s Height >= Limit Height run function height_limit:not_move
