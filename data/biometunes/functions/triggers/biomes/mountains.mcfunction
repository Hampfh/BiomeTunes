
# Set biome variable to plains
scoreboard players set @s biome 3

tellraw @s[tag=receiveBiomeMsg] ["",{"text":"You entered a mountain biome","color":"gray","italic":true}]

# Reset all advancements and music
function biometunes:triggers/reset