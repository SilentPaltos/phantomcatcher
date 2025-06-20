
    # Отзыв достижения-триггера
    advancement revoke @s only phantomcatcher:_trigger/hurt_phantomcatcher

    # Если игрок в выживании, ловец уничтожается и по возможности дропает себя
    execute \
        if entity @s[ gamemode =! creative ] \
        as @e[ \
            predicate = phantomcatcher:entity/phantomcatcher, \
            predicate = phantomcatcher:entity/phantomcatcher/hurted \
        ] \
        positioned as @s \
        run function phantomcatcher:entity/phantomcatcher/mine

    # Если игрок в креативе, ловец уничтожается без дропа
    execute \
        if entity @s[ gamemode = creative ] \
        as @e[ \
            predicate = phantomcatcher:entity/phantomcatcher, \
            predicate = phantomcatcher:entity/phantomcatcher/hurted \
        ] \
        positioned as @s \
        run function phantomcatcher:entity/phantomcatcher/kill