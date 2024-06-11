
    # Есть хотя бы один незащищённый или непойманный фантом
    execute if entity @e[ type = phantom, predicate =! phantomcatcher:entity/phantom/protected, limit = 1 ] run return 1

    # Незащищённых или непойманных фантомов нет
    return 0