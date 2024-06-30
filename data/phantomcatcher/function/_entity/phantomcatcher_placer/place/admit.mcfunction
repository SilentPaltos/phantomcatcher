
    # Обработка поворота игрока в поворот ловца
    data modify storage phantomcatcher run_function.Rotation set value [0f,0f]
    execute store result storage phantomcatcher run_function.Rotation[0] float 1 run function phantomcatcher:_entity/phantomcatcher_placer/place/admit/get_rotation

    # Другие данные ловца
        data modify storage phantomcatcher run_function.scores.charge set from entity @e[ predicate = phantomcatcher:_entity/phantomcatcher_placer, limit = 1, sort = nearest ] Item.components."minecraft:custom_data".phantomcatcher.charge
        data modify storage phantomcatcher run_function.scores.is_charged set from entity @e[ predicate = phantomcatcher:_entity/phantomcatcher_placer, limit = 1, sort = nearest ] Item.components."minecraft:custom_data".phantomcatcher.is_charged
        data modify storage phantomcatcher run_function.scores.is_ticking set from entity @e[ predicate = phantomcatcher:_entity/phantomcatcher_placer, limit = 1, sort = nearest ] Item.components."minecraft:custom_data".phantomcatcher.is_ticking

    # Призыв ловца фантомов
    execute align xyz positioned ~0.5 ~0.36 ~0.5 run function summon:phantomcatcher/phantomcatcher__macro with storage phantomcatcher run_function

    # Звук установки

    playsound minecraft:block.cobweb.place neutral @a ~ ~ ~ 0.5 1 1

    # Удаление использованных данных
    data remove storage phantomcatcher run_function
