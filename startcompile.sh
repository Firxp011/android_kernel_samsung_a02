#!/bin/bash

echo Starting Compile Script . . .

function target(){
	. target.sh
}

function check(){
	. check.sh
}

function compile(){
	. compile.sh
}

target
check
compile
