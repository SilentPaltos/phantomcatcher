
    # Увеличение времени зарядки
    scoreboard players add @s phantomcatcher.charge_time 1

    # По достижении определённых значений заряда ловец обновляется
    execute \
        if predicate phantomcatcher:entity/phantomcatcher/got_charge \
        run function phantomcatcher:entity/phantomcatcher/got_charge