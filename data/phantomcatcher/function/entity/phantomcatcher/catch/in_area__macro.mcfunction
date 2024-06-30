
    # macro input
    #> $(x)
    #> $(z)
    #> $(d_start)
    #> $(diagonal)

    # Отметка ловимых сущностей в области действия ловца
    $execute positioned $(x) -64 $(z) positioned ~$(d_start) -64 ~$(d_start) align xyz run tag @e[ predicate = phantomcatcher:entity/catchable, tag =! phantomcatcher.entity.catchable.protected, dx = $(diagonal), dy = 400, dz = $(diagonal) ] add phantomcatcher.entity.catchable.catched

    # Обратная связь на каждую отмеченную сущность вплоть до 100
    execute positioned as @s as @e[ type = #phantomcatcher:catchable, tag = phantomcatcher.entity.catchable.catched, limit = 100 ] run function phantomcatcher:entity/phantomcatcher/catch/feedback

    # Поимка отмеченных сущностей
    execute as @e[ type = #phantomcatcher:catchable, tag = phantomcatcher.entity.catchable.catched ] run function phantomcatcher:entity/catchable/get_catched
    
    # Возврат 1 (true), если была поймана хотя бы одна сущность
    execute if entity @e[ type = #phantomcatcher:catchable, tag = phantomcatcher.entity.catchable.catched, limit = 1 ] run return 1