
    # Обновление фантомов
    execute if function phantomcatcher:tick/exist_unprotected_phantom run function phantomcatcher:tick/update_phantoms

    # Зарядка ловцов фантомов
    execute as @e[ predicate = phantomcatcher:entity/phantomcatcher, predicate = phantomcatcher:entity/ticking ] run function phantomcatcher:entity/phantomcatcher/tick