
        tellraw @s [ \
            "\n", \
            { \
                translate: "emoji.phantomcatcher.phantomcatcher", \
                font: "phantomcatcher:emoji", \
                shadow_color: [0,0,0,0] \
            }, \
            " ", \
            { \
                translate: "pack.phantomcatcher.name", \
                color: "red", \
                hover_event: { \
                    action: "show_text", \
                    value: { translate: "pack.phantomcatcher.description" } \
                } \
            }, \
            "\n\n", \
            { \
                translate: "pack.phantomcatcher.version", \
                color: "yellow", \
                with: [ { text: "Alpha 0.1.4", color: "green" } ] \
            }, \
            "\n", \
            { \
                translate: "pack.phantomcatcher.author", \
                color: "yellow", \
                with: [ { text: "SilentPaltos", color: "green" } ] \
            }, \
            "\n\n", \
            { \
                text: "", color: "aqua", \
                extra: [ \
                    { text: "> [" }, \
                    { translate: "pack.phantomcatcher.get_links" }, \
                    { text: "]" } \
                    \
                ], \
                click_event: { \
                    action: "run_command", \
                    command: "function phantomcatcher:info/links" \
                } \
            }, \
            "\n", \
        ]
