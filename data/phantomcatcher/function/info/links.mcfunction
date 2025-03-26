
    tellraw @s [ \
        { \
            translate: "pack.phantomcatcher.links", \
            with: [ \
                { \
                    translate: "pack.phantomcatcher.link_modrinth", \
                    color: "green", \
                    click_event: { \
                        action: "open_url", \
                        url: "https://modrinth.com/project/phantomcatcher" \
                    } \
                }, \
                { \
                    translate: "pack.phantomcatcher.link_planetminecraft", \
                    color: "aqua", \
                    click_event: { \
                        action: "open_url", \
                        url: "https://www.planetminecraft.com/data-pack/phantomcatcher/" \
                    } \
                }, \
                { \
                    translate: "pack.phantomcatcher.link_github", \
                    color: "gray", \
                    click_event: { \
                        action: "open_url", \
                        url: "https://github.com/SilentPaltos/phantomcatcher" \
                    } \
                } \
            ] \
        } \
    ]
