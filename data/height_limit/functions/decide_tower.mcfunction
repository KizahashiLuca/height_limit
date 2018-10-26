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
##   Decide tower position.
###############################

fill ~ 0 ~ ~ 4 ~ minecraft:bedrock
execute store result score Limit position.X run data get entity @s Pos[0]
execute store result score Limit position.Z run data get entity @s Pos[2]