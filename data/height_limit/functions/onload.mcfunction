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
##   load one time at first.
###############################

gamemode survival @a

execute if entity @a[nbt={OnGround:1b}] run tellraw @a {"text":"[Height Limit] ","color":"white","extra":[{"text":"load successful ! ","color":"dark_green","italic":true}]}
scoreboard objectives add Height dummy
scoreboard objectives add position.X dummy
scoreboard objectives add position.Y dummy
scoreboard objectives add position.Z dummy
scoreboard objectives add pastposition.Y dummy
scoreboard objectives add upperbound.X dummy
scoreboard objectives add upperbound.Z dummy
scoreboard objectives add lowerbound.X dummy
scoreboard objectives add lowerbound.Z dummy
scoreboard objectives add WhileBoring trigger
scoreboard objectives add Death deathCount
scoreboard objectives add Penalty dummy

execute unless score Limit Height matches 5.. run function height_limit:start