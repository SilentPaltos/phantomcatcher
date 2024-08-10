
    # Защита переименованых сущностей от ловцов
        
        execute \
            if score *catch_renamed_catchables phantomcatcher.config matches 0 \
            as @e[ predicate = phantomcatcher:entity/catchable ] \
            if data entity @s CustomName \
        run \
            function phantomcatcher:entity/catchable/get_protected

    # Ловля сущностей ловцами
    
        execute \
            unless score *catch_square_diagonal phantomcatcher.config matches 0 \
            if function phantomcatcher:tick/exist_unprotected_catchable \
            as @e[ \
                predicate = phantomcatcher:entity/phantomcatcher, \
                predicate = phantomcatcher:entity/ticking, \
                sort = random \
            ] \
        run \
            function phantomcatcher:entity/phantomcatcher/catch

    # Защита всех оставшихся ловимых сущностей
    
        execute \
            as @e[ \
                type = #phantomcatcher:catchable, \
                tag =! phantomcatcher.entity.catchable.protected \
            ] \
        run \
            function phantomcatcher:entity/catchable/get_protected