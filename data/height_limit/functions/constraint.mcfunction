###############################
## Minecraft Version 1.13.2
##   Height Limit
## Author:
##   KizahashiLuca
## Date: 
##   Oct 24, 2018
## Version:
##   0.0.3
## Description:
##   the basis of function.
###############################

execute if entity @s[scores={Death=1}] run function height_limit:death
execute if entity @s[nbt={OnGround:1b}] store result score @s Height run data get entity @s Pos[1]
execute store result score @s position.X run data get entity @s Pos[0]
execute store result score @s position.Y run data get entity @s Pos[1]
execute store result score @s position.Z run data get entity @s Pos[2]

execute if entity @s[nbt={OnGround:1b}] if score @s WhileBoring matches 0 if score @s Height <= Limit Height run function height_limit:keep_position
execute if entity @s[nbt={OnGround:1b}, scores={Death=1}] if score @s WhileBoring matches 1 run function height_limit:death_position
execute if entity @s[scores={Death=0}] if score @s WhileBoring matches 1 if score @s position.Y < @s pastposition.Y run function height_limit:boring_position

execute if score @s WhileBoring matches 0 if entity @s[x_rotation=70..110] if score @s position.Y > Limit Height run gamemode adventure @s[gamemode=survival]
execute if score @s WhileBoring matches 0 if entity @s[x_rotation=70..110] if score @s position.Y <= Limit Height run gamemode survival @s[gamemode=adventure]
execute if score @s WhileBoring matches 1 if score @s Height > Limit Height run function height_limit:boring
execute if score @s WhileBoring matches 1 if score @s Height <= Limit Height run scoreboard players set @s WhileBoring 0
execute if score @s WhileBoring matches 0 if score @s Height > Limit Height if entity @s[nbt={OnGround:1b}] run function height_limit:limit

function height_limit:reposition

scoreboard objectives setdisplay sidebar Height
scoreboard objectives setdisplay list Penalty