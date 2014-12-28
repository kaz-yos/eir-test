### Shell script

pwd
ls
ls -l

# Naive recursive Fibonnaci
# http://www.bashguru.com/2010/12/shell-script-to-generate-fibonacci.html
fib() {
    case $1 in
        0|1) printf "1 " ;;
        *) echo -n "$(( $(fib $(($1-1))) + $(fib $(($1-2))) )) ";;
    esac
}

up_to_n() {
    for (( i=0; i<=$1; i++ ))
    do
        fib $i
    done
}

up_to_n 9
up_to_n 14


# Build-up Fibonacci
fib_helper() { # n seq-1 seq-2 acc
    if
        [ $1 = $4 ]
    then
        printf "$3 "
    else
        echo -n "$(($(fib_helper $1 $3 $(($2+$3)) $(($4+1))))) "
    fi
}

up_to_n2() {
    for (( i=0; i<=$1; i++ ))
    do
        fib_helper $i 0 1 0
    done
}

up_to_n2 9
up_to_n2 19
up_to_n2 29
up_to_n2 49
# error
# up_to_n2 99

