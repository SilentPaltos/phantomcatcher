
    # Заряд 1
    execute \
        if predicate phantomcatcher:entity/phantomcatcher/got_charge/1 \
    run return run function phantomcatcher:entity/phantomcatcher/set_charge/1

    # Заряд 2
    execute \
        if predicate phantomcatcher:entity/phantomcatcher/got_charge/2 \
    run return run function phantomcatcher:entity/phantomcatcher/set_charge/2

    # Заряд 3
    execute \
        if predicate phantomcatcher:entity/phantomcatcher/got_charge/3 \
    run return run function phantomcatcher:entity/phantomcatcher/set_charge/3