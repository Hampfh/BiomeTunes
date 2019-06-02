
# Enable main track 
execute as @s[scores={biome=0, soundtrackState=1..}] run scoreboard players set @s soundtrackState 2
# Enable intro track
execute unless score @s biome matches 0 run scoreboard players set @s soundtrackState 1
execute if score @s soundtrackState matches 0 run scoreboard players set @s soundtrackState 1

# Set biome variable to plains
scoreboard players set @s biome 0

# Set soundtrack time
execute if score @s soundtrackState matches 2 run scoreboard players set @s soundtrackTimer 1480
execute if score @s soundtrackState matches 1 run scoreboard players set @s soundtrackTimer 20

tellraw @s[tag=receiveBiomeMsg, scores={soundtrackState=1}] ["",{"text":"You entered an ocean biome","color":"gray","italic":true}]

# Reset all advancements and music
function biometunes:triggers/reset