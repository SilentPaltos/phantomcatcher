
    # macro input
    #> $(x)
    #> $(z)
    #> $(d_start)
    #> $(diagonal)

    # Выдача тега ловимым сущностям в области действия ловца
    $execute \
        positioned $(x) -64 $(z) \
        positioned ~$(d_start) -64 ~$(d_start) \
        align xyz \
    run \
        tag @e[ \
            predicate = phantomcatcher:entity/catchable, \
            tag =! phantomcatcher.entity.catchable.protected, \
            dx = $(diagonal), dy = 400, dz = $(diagonal) \
        ] \
            add phantomcatcher.entity.catchable.catched

    # Обратная связь на каждую сущность с тегом вплоть до 100
    execute \   
        as @e[ \
            type = #phantomcatcher:catchable, \
            tag = phantomcatcher.entity.catchable.catched, \
            limit = 100 \
        ] \
        positioned as @s \
        positioned as @n[ \
            predicate = phantomcatcher:entity/phantomcatcher, \
            predicate = phantomcatcher:entity/phantomcatcher/got_charge/3, \
            predicate = phantomcatcher:entity/ticking \
        ] \
    run function phantomcatcher:entity/phantomcatcher/catch/feedback

    # Поимка сущностей с тегом
    execute \
        as @e[ \
            type = #phantomcatcher:catchable, \
            tag = phantomcatcher.entity.catchable.catched \
        ] \
    run function phantomcatcher:entity/catchable/get_catched