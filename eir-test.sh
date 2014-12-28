### Shell script

pwd
ls
ls -l

# http://www.bashguru.com/2010/12/shell-script-to-generate-fibonacci.html
Fibonacci() {
    case $1 in
        0|1) printf "1 " ;;
        *) echo -n "$(( $(Fibonacci $(($1-1))) + $(Fibonacci $(($1-2))) )) ";;
    esac
}

for i in 0 1 2 3 4 5 6 7 8 9; do Fibonacci $i; done
for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14; do Fibonacci $i; done

