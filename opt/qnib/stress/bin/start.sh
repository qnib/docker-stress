#!/bin/bash

STRESS_OPTS=""
if [ "$#" -eq 0 ];then
    if [ ${STRESS_RANDOM_CPU} -ne 0 ];then
        STRESS_OPTS="-c ${STRESS_RANDOM_CPU}" 
    fi
    if [ "X${STRESS_RANDOM_MOD}" != "X" ];then
        STRESS_OPTS="${STRESS_OPTS} --timeout $(echo ${RANDOM} % ${STRESS_RANDOM_MOD} |bc)"
    fi
else 
    STRESS_OPTS=$@
fi
stress ${STRESS_OPTS}
