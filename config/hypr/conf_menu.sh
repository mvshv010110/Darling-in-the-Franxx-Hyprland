#!/bin/bash

# Ścieżka do Twoich plików
CONF_DIR="$HOME/.config/hypr/conf"

# Pobierz listę plików, usuń ścieżkę, zostaw same nazwy
# Wofi wyświetli listę, a wynik trafi do zmiennej CHOICE
CHOICE=$(ls "$CONF_DIR" | wofi --dmenu --prompt "" --x 0 --y 150 --width 250 --height 370 --style ~/.config/wofi/style.css --cache-file /dev/null)

# Jeśli nic nie wybrałeś (np. zamknąłeś Esc), wyjdź
if [ -z "$CHOICE" ]; then
    exit 0
fi

# Odpal Kitty, a w nim Nano z wybranym plikiem
kitty nano "$CONF_DIR/$CHOICE"
