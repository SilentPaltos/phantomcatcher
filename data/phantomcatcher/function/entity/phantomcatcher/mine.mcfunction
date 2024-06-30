
    # Выпадение предмета, если игровое правило это допускает
    execute if function phantomcatcher:gamerule/do_entity_drops/is_true run loot spawn ~ ~ ~ loot phantomcatcher:item/phantomcatcher

    # Уничтожение ловца
    function phantomcatcher:entity/phantomcatcher/kill

