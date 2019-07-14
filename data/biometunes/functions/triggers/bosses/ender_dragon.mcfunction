
# Always hard reset transition
execute as @s run stopsound @s music

# Executes ones (when player engages in battle)
execute as @s unless score @s bossfight matches 1 run scoreboard players set @s soundtrackTimer 0
execute as @s[tag=receiveBossMsg] unless score @s bossfight matches 1 run tellraw @s ["",{"text":"You entered a boss battle with an ender dragon","color":"gray","italic":true}]

scoreboard players set @s bossfight 1

# Set soundtrack time
scoreboard players set @s[scores={soundtrackTimer=0}] soundtrackTimer 100