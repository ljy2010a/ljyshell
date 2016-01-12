#!/bin/bash
clean(){
    ps -ef|grep "php-fpm"|awk '$0 !~/grep/ {print $2}' |tr -s '\n' ' '|xargs kill -9
}

up(){
    echo "php-fpm"
    php-fpm &
}

show(){
    ps -ef|grep "php-fpm"
}


case $1 in
	"clean")
	clean
    show
	;;
    "show")
    show
    ;;
	"up")
	up
	;;
    "re")
    clean
    up
    show
    ;;
	*)
	;;
esac

