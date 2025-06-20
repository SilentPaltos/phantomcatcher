
    # Есть хотя бы одна незащищённая или непойманная сущность
    execute \
        if entity @e[ \
            predicate = phantomcatcher:entity/catchable, \
            tag =! phantomcatcher.entity.catchable.protected, \
            limit = 1 \
        ] \
        run return 1

    # Незащищённых или непойманных сущностей нет
    return 0