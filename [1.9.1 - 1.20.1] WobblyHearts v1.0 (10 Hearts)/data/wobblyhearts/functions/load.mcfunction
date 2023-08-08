# Add death objective
scoreboard objectives add wobblyhearts_deaths deathCount

# Detect when a player eats an enchanted golden apple
scoreboard objectives add wobblyhearts_apple minecraft.used:minecraft.enchanted_golden_apple

# Loaded tellraw
tellraw @a ["",{"text":"WobblyHearts :","color":"dark_red"},{"text":" LOADED","color":"dark_green"},{"text":"\n"},{"text":"More information","underlined":true,"color":"gray","clickEvent":{"action":"open_url","value":"http://discord.kyrianow.me"}}]