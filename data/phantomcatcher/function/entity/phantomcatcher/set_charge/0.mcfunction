
    playsound minecraft:block.cobweb.place neutral @a ~ ~ ~ 0.5 1 1

    execute on passengers run data modify entity @s item.components."minecraft:custom_model_data" set value 500000
    scoreboard players set @s phantomcatcher.is_charged 0