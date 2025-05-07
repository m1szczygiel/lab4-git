case $1 in
    --date|-d)
        date
        shift
        ;;
    --logs|-l)
        count=${2:-100}
        for i in $(seq 1 $count); do
            echo "log$i.txt, skrypt.sh, $(date)" > log$i.txt
        done
        shift
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