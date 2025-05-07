#!/bin/bash

while [[ $# -gt 0 ]]; do
    case $1 in
        --date|-d)
            date
            shift
            ;;
        --help|-h)
            echo "Dostępne opcje:"
            echo "--date | -d - wyświetla datę"
            echo "--logs | -l - tworzy pliki log"
            shift
            ;;
        *)
            echo "Nieznana opcja: $1"
            exit 1
            ;;
    esac
done