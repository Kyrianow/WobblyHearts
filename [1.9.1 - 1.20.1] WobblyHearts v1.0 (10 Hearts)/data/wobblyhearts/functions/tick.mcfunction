execute as @a[scores={wobblyhearts_deaths=0}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={wobblyhearts_deaths=1}] run attribute @s minecraft:generic.max_health base set 18
execute as @a[scores={wobblyhearts_deaths=2}] run attribute @s minecraft:generic.max_health base set 16
execute as @a[scores={wobblyhearts_deaths=3}] run attribute @s minecraft:generic.max_health base set 14
execute as @a[scores={wobblyhearts_deaths=4}] run attribute @s minecraft:generic.max_health base set 12
execute as @a[scores={wobblyhearts_deaths=5}] run attribute @s minecraft:generic.max_health base set 10
execute as @a[scores={wobblyhearts_deaths=6}] run attribute @s minecraft:generic.max_health base set 8
execute as @a[scores={wobblyhearts_deaths=7}] run attribute @s minecraft:generic.max_health base set 6
execute as @a[scores={wobblyhearts_deaths=8}] run attribute @s minecraft:generic.max_health base set 4
execute as @a[scores={wobblyhearts_deaths=9}] run attribute @s minecraft:generic.max_health base set 2
execute as @a[scores={wobblyhearts_deaths=10}] run gamemode spectator @s
execute as @a[scores={wobblyhearts_deaths=10}] run me AH AH AH ah ah ah ...
execute as @a[scores={wobblyhearts_deaths=10}] run tellraw @a ["",{"text":"----------------------","bold":true,"color":"dark_blue"},{"text":"\n"},{"text":" \u0020 \u0020 A player leaves us !","color":"aqua"},{"text":" \u0020 \u0020 \n"},{"text":"After losing all these hearts,","color":"aqua"},{"text":"\n"},{"text":"he decided to leave this world.","color":"aqua"},{"text":"\n"},{"text":"----------------------","bold":true,"color":"dark_blue"},{"text":"\n "}]
execute as @a[scores={wobblyhearts_deaths=10}] run function wobblyhearts:ban
execute as @a[scores={wobblyhearts_deaths=10}] run scoreboard players set @s wobblyhearts_deaths 11

# Unban player
execute as @a[scores={wobblyhearts_deaths=9999}] run gamemode survival @s
execute as @a[scores={wobblyhearts_deaths=9999}] run scoreboard players set @s wobblyhearts_deaths 0

# If a player eats an enchanted golden apple then give them back a heart
execute as @a[scores={wobblyhearts_apple=1..}] unless score @s wobblyhearts_deaths matches ..0 run scoreboard players remove @s wobblyhearts_deaths 1
execute as @a[scores={wobblyhearts_apple=1..}] if score @s wobblyhearts_deaths matches 0 run tellraw @s ["",{"text":"-----------------","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Heart limit reached","bold":true,"color":"gold"},{"text":"\n"},{"text":"-----------------","bold":true,"color":"yellow"}]
execute as @a[scores={wobblyhearts_apple=1..}] run scoreboard players reset @s wobblyhearts_apple

# Add 0
scoreboard players add @a wobblyhearts_deaths 0