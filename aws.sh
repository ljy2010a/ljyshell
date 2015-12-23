#!/bin/bash
ssh(){
    echo "ssh -i ../ljy2010a.pem ubuntu@54.238.210.81"
}

case $1 in
	"ssh")
	ssh
	;;
	*)
	;;
esac

