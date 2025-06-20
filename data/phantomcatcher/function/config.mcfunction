
    execute \
        if entity @s[ type = player ] \
        run return \
            run function phantomcatcher:config/open_by_player
            
    # Default options
    data merge storage phantomcatcher { \
        reset_on_load: true, \
        charge_period: 24000, \
        catch_square_size: 3, \
        catch_renamed_catchables: false \
    }