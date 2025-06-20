
    # Config
    $data merge storage phantomcatcher { \
        reset_on_load: $(reset_on_load)b, \
        charge_period: $(charge_period), \
        catch_square_size: $(catch_square_size), \
        catch_renamed_catchables: $(catch_renamed_catchables)b \
    }
    execute \
        store result storage phantomcatcher charge_period int 24000 \
        run data get storage phantomcatcher charge_period 1

    # Config Update
    function phantomcatcher:load/update_config