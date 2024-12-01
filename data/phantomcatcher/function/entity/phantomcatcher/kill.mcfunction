
    # Отмена выполнения, если исполнитель не ловец
    execute \
        unless predicate phantomcatcher:entity/phantomcatcher \
    run return 0

    # Уничтожение всех частей ловца
    execute on passengers run kill @s[ tag = phantomcatcher.entity.phantomcatcher ]
    kill @s

    # Звуки
    playsound minecraft:block.cobweb.break neutral @a ~ ~ ~ 0.2 1 0
