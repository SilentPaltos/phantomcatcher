
    # Если ловец может быть создан, он создаётся, а функция возвращает успех
    execute if function phantomcatcher:entity/phantomcatcher/can_be_placed run return run function phantomcatcher:_entity/phantomcatcher_placer/place/admit

    # Отмена установки
    function phantomcatcher:_entity/phantomcatcher_placer/place/deny