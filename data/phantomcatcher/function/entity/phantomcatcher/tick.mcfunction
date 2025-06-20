
    # Зарядка
    execute \
        unless predicate phantomcatcher:entity/phantomcatcher/charged \
        run function phantomcatcher:entity/phantomcatcher/charging

    # Выпадение с некоторым шансом при перекрытии блоком
    execute \
        at @s \
        if predicate phantomcatcher:entity/phantomcatcher/can_be_placed/intersectes_block \
        if predicate phantomcatcher:entity/phantomcatcher/can_be_placed/break_chance \
        run function phantomcatcher:entity/phantomcatcher/mine

    # Выпадение, если отсутствует опора сверху
    execute \
        at @s \
        unless predicate phantomcatcher:entity/phantomcatcher/can_be_placed/have_block_above_to_hang \
        run function phantomcatcher:entity/phantomcatcher/mine