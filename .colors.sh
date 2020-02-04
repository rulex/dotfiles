#!/bin/bash

export C_N='\033[0m'
export C_BLACK='\033[0;30m'
export C_RED='\033[0;31m'
export C_GREEN='\033[0;32m'
export C_BROWN='\033[0;33m' # or orange
export C_BLUE='\033[0;34m'
export C_PURPLE='\033[0;35m'
export C_CYAN='\033[0;36m'
export C_LIGHTGRAY='\033[0;37m'
export C_DARKGRAY='\033[1;30m'
export C_LIGHTRED='\033[1;31m'
export C_LIGHTGREEN='\033[1;32m'
export C_YELLOW='\033[1;33m'
export C_LIGHTBLUE='\033[1;34m'
export C_LIGHTPURPLE='\033[1;35m'
export C_LIGHTCYAN='\033[1;36m'
export C_WHITE='\033[1;37m'

export C_LIST=(
    "${C_N}"
    "${C_BLACK}"
    "${C_RED}"
    "${C_GREEN}"
    "${C_BROWN}"
    "${C_BLUE}"
    "${C_PURPLE}"
    "${C_CYAN}"
    "${C_LIGHTGRAY}"
    "${C_DARKGRAY}"
    "${C_LIGHTRED}"
    "${C_LIGHTGREEN}"
    "${C_YELLOW}"
    "${C_LIGHTBLUE}"
    "${C_LIGHTPURPLE}"
    "${C_LIGHTCYAN}"
    "${C_WHITE}"
)

#for c in ${C_LIST} ; do echo ${c} hi ; done
