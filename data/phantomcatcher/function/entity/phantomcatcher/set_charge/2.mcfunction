
    playsound minecraft:block.cobweb.place neutral @a ~ ~ ~ 0.2 1 0
    execute \
        on passengers \
    run data modify entity @s item.components."minecraft:custom_model_data" set value { floats: [2.0f] }
    
    scoreboard players set @s phantomcatcher.is_charged 0