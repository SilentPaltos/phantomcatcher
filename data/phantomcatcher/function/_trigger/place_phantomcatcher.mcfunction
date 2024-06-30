
    # Отзыв достижения-триггера
    advancement revoke @s only phantomcatcher:_trigger/place_phantomcatcher

    # Попытка установить ловец
    execute positioned as @e[ predicate = phantomcatcher:_entity/phantomcatcher_placer ] run function phantomcatcher:_entity/phantomcatcher_placer/place/try

    # Уничтожение промежуточной сущности
    kill @e[ predicate = phantomcatcher:_entity/phantomcatcher_placer ]