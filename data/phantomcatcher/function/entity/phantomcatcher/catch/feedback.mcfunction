
    # Частицы
    particle entity_effect{ color: [ 0.4f, 1f, 0f, 0.6f  ] } ~ ~0.15 ~ 0.02 0.02 0.05 0 1 normal @a
    particle mycelium ~ ~0.2 ~ 0.025 0.025 0.025 0.1 1 normal @a

    # Звуки
    playsound particle.soul_escape neutral @a ~ ~ ~ 0.3 1 0

    # Выдача достижения игрокам
    advancement grant @a[ distance = ..8 ] only phantomcatcher:adventure/phantomcatcher_catches