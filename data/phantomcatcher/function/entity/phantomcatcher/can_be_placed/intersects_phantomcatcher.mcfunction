
    # Запись кол-ва ловцов
    execute \
        align xyz positioned ~0.5 ~0.36 ~0.5 \
        store result score *entity_count.phantomcatcher phantomcatcher.config \
        if entity @e[ \
            distance = ..0.001 , \
            predicate = phantomcatcher:entity/phantomcatcher, \
            limit = 2 \
        ]

    # Если проверяет ловец, то ищется хотя бы два ловца
    execute \
        if predicate phantomcatcher:entity/phantomcatcher \
        if score *entity_count.phantomcatcher phantomcatcher.config matches 2 \
        run return run scoreboard players reset *entity_count.phantomcatcher phantomcatcher.config

    # Если проверяет не ловец, то ищется хотя бы один ловец
    execute \
        unless predicate phantomcatcher:entity/phantomcatcher \
        if score *entity_count.phantomcatcher phantomcatcher.config matches 1.. \
        run return run scoreboard players reset *entity_count.phantomcatcher phantomcatcher.config

    # Ни один ловец не был найден
    scoreboard players reset *entity_count.phantomcatcher phantomcatcher.config
    return 0

