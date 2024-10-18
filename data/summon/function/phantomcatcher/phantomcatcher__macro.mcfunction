
    # macro input
    #> $(scores)
    #> $(Rotation)

    # Кастомные теги
        
        $data modify storage phantomcatcher running_function.scores set value $(scores)

    # Призыв сущности
        
        $summon interaction ~ ~ ~ { \
            width:0.4f, \
            height:0.4f, \
            Tags: [ \
                "phantomcatcher.entity.phantomcatcher", \
                "phantomcatcher.this" \
            ], \
            Passengers: [ \
                { \
                    id: "item_display", \
                    item: { \
                        id: "structure_void", \
                        components: { \
                            "minecraft:item_model": "phantomcatcher:entity/phantomcatcher", \
                            "minecraft:custom_model_data": 0  \
                        } \
                    }, \
                    Tags: [ "phantomcatcher.entity.phantomcatcher" ], \
                    transformation: [ \
                        1f, 0f, 0f, 0f, \
                        0f, 1f, 0f, -0.3f, \
                        0f, 0f, 1f, 0f, \
                        0f, 0f, 0f, 1f \
                    ], \
                    Rotation: $(Rotation) \
                } \
            ], \
            Rotation: $(Rotation) \
        }

        # Кастомные теги на скорбордах
        
            execute \
                store result score @e[ \
                    type = interaction, \
                    tag = phantomcatcher.this \
                ] \
                    phantomcatcher.charge_time \
            run \
                data get storage phantomcatcher running_function.scores.charge
            
            scoreboard players operation @e[ \
                type = interaction, \
                tag = phantomcatcher.this \
            ] \
                phantomcatcher.charge_time *= *charge_period phantomcatcher.config
            
            execute \
                as @e[ \
                    type = interaction, \
                    tag = phantomcatcher.this \
                ] \
            run \
                function phantomcatcher:entity/phantomcatcher/got_charge
    
            execute \
                store result score @e[ \
                    type = interaction, \
                    tag = phantomcatcher.this \
                ] phantomcatcher.is_charged \
            run \
                data get storage phantomcatcher running_function.scores.is_charged

            execute \
                store result score @e[ \
                    type = interaction, \
                    tag = phantomcatcher.this \
                ] \
                    phantomcatcher.is_ticking \
            run \
                data get storage phantomcatcher running_function.scores.is_ticking

        data remove storage phantomcatcher running_function

        # Версия

            scoreboard players operation @e[ \
                type = interaction, \
                tag = phantomcatcher.this \
            ] \
                phantomcatcher.version = *version phantomcatcher.config

    tag @e[ \
        type = interaction, \
        tag = phantomcatcher.this \
    ] \
        remove phantomcatcher.this