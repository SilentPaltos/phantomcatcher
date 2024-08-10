
    execute \
        if predicate phantomcatcher:entity/phantomcatcher/can_be_placed \
        unless function phantomcatcher:entity/phantomcatcher/can_be_placed/intersects_phantomcatcher \
    run \
        return 1