
    # macro input
    #> $(x)
    #> $(z)
    #> $(d_start)
    #> $(diagonal)

    $execute positioned $(x) 0 $(z) positioned ~$(d_start) 0 ~$(d_start) align xyz run tag @e[ type = phantom, predicate =! phantomcatcher:entity/phantom/protected, dx = $(diagonal), dy = 320, dz = $(diagonal) ] add phantomcatcher.entity.phantom.get_catched

    execute positioned as @s as @e[ type = phantom, tag = phantomcatcher.entity.phantom.get_catched, limit = 100 ] run function phantomcatcher:entity/phantomcatcher/catch_phantoms/feedback

    execute as @e[ type = phantom, tag = phantomcatcher.entity.phantom.get_catched ] run function phantomcatcher:entity/phantom/get_catched

    execute if entity @e[ type = phantom, tag = phantomcatcher.entity.phantom.get_catched ] run return 1