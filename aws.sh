#!/bin/bash
ssh(){
    echo "ssh -i ../ljy2010a.pem ubuntu@54.249.53.40"
}

case $1 in
	"ssh")
	ssh
	;;
	*)
	;;
esac

