function biometunes:triggers/prebiome

# Enable intro track
execute unless score @s biome matches 0 run tellraw @s[tag=receiveBiomeMsg] ["",{"text":"You entered an ocean biome","color":"gray","italic":true}]

# Set biome variable to plains
scoreboard players set @s biome 0
scoreboard players set @s biomeAmbient 0

# Set soundtrack time
scoreboard players set @s musicLength 3240
scoreboard players operation @s[tag=!playing] musicTimer = @s[tag=!playing] musicLength

# Set ambient time
scoreboard players set @s ambientLength 0
scoreboard players operation @s[tag=!playingAmbient] ambientTimer = @s[tag=!playingAmbient] ambientLength

# Reset all advancements and music
function biometunes:triggers/reset