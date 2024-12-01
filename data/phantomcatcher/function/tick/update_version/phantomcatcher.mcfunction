
    # Обновление смещения
    execute \
        on passengers \
    run data modify entity @s[ \
            type = item_display, \
            tag = phantomcatcher.entity.phantomcatcher \
        ] \
            transformation.translation[1] set value -0.3f

    # Обновление модельки
    execute \
        on passengers \
    run data modify entity @s item.components."minecraft:item_model" set value "phantomcatcher:entity/phantomcatcher"

        # Заряд 0
        execute \
            on passengers \
        run data modify entity @s item.components."minecraft:custom_model_data" set value { floats: [0.0f] }

        # Заряд 1
        execute \
            if predicate phantomcatcher:entity/phantomcatcher/got_charge/1 \
            on passengers \
        run return \
            run data modify entity @s item.components."minecraft:custom_model_data" set value { floats: [1.0f] }

        # Заряд 2
        execute \
            if predicate phantomcatcher:entity/phantomcatcher/got_charge/2 \
            on passengers \
        run return \
            run data modify entity @s item.components."minecraft:custom_model_data" set value { floats: [2.0f] }

        # Заряд 3
        execute \
            if predicate phantomcatcher:entity/phantomcatcher/got_charge/3 \
            on passengers \
        run return \
            run data modify entity @s item.components."minecraft:custom_model_data" set value { floats: [3.0f] }