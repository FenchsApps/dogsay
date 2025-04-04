#!/bin/bash

# Конфигурация
CONFIG_FILE="$HOME/.dogsay.conf"

# Если файл конфигурации существует, загружаем его
if [ -f "$CONFIG_FILE" ]; then
    source "$CONFIG_FILE"
else
    # Значения по умолчанию
    DOG_ART="default"
    CUSTOM_ART=""
fi

# Функция для вывода помощи
usage() {
    echo "Usage: dogsay TEXT"
    echo "Options:"
    echo "  --config <type>  Set dog art type (default, small)"
    echo "  --custom <art>   Set custom dog art (provide a filename with ASCII art)"
    exit 1
}

# Проверяем, передан ли текст в качестве аргумента
if [ -z "$1" ]; then
    usage
fi

# Обработка параметров
while [[ $# -gt 0 ]]; do
    case "$1" in
        --config)
            if [ -z "$2" ]; then
                echo "Error: Dog art type not specified."
                exit 1
            fi
            echo "DOG_ART=\"$2\"" > "$CONFIG_FILE"
            echo "Configuration saved: dog art type set to '$2'."
            exit 0
            ;;
        --custom)
            if [ -z "$2" ]; then
                echo "Error: Custom art file not specified."
                exit 1
            fi
            if [ ! -f "$2" ]; then
                echo "Error: File '$2' not found."
                exit 1
            fi
            CUSTOM_ART=$(cat "$2")
            echo "DOG_ART=\"custom\"" > "$CONFIG_FILE"
            echo "CUSTOM_ART='$CUSTOM_ART'" >> "$CONFIG_FILE"
            echo "Custom dog art set from file '$2'."
            exit 0
            ;;
        *)
            TEXT=$1
            shift
            ;;
    esac
    shift
done

# Выводим текст в формате < TEXT >
printf "                   < %s >\n" "$TEXT"

# Выводим изображение собаки в зависимости от конфигурации
case "$DOG_ART" in
    "default")
        echo "                      / /"
        echo "░▄▀▄▀▀▀▀▄▀▄░░░░░░░░░"
        echo "░█░░░░░░░░▀▄░░░░░░▄░"
        echo "█░░▀░░▀░░░░░▀▄▄░░█░█"
        echo "█░▄░█▀░▄░░░░░░░▀▀░░█"
        echo "█░░▀▀▀▀░░░░░░░░░░░░█"
        echo "█░░░░░░░░░░░░░░░░░░█"
        echo "█░░░░░░░░░░░░░░░░░░█"
        echo "░█░░▄▄░░▄▄▄▄░░▄▄░░█░"
        echo "░█░▄▀█░▄▀░░█░▄▀█░▄▀░"
        echo "░░▀░░░▀░░░░░▀░░░▀░░░"
        ;;
    "small")
        echo "   / \\__"
        echo "  (    @\\___"
        echo "  /         O"
        echo " /   (_____/"
        echo "/_____/   U"
        ;;
    "custom")
        echo "$CUSTOM_ART"
        ;;
    *)
        echo "Error: Unknown dog art type: $DOG_ART"
        exit 1
        ;;
esac
