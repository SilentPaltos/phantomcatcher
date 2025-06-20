
    # Обновление версии 
    execute \
        as @e[ predicate = phantomcatcher:outdated ] \
        run function phantomcatcher:tick/update_version

    # Обновление ловимых сущностей
    execute \
        if function phantomcatcher:tick/exist_unprotected_catchable \
        run function phantomcatcher:tick/update_catchables

    # Тикание ловцов
    execute \
        as @e[ \
            predicate = phantomcatcher:entity/phantomcatcher, \
            predicate = phantomcatcher:entity/ticking \
        ] \
        run function phantomcatcher:entity/phantomcatcher/tick