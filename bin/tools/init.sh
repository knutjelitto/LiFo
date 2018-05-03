if [ "${LifoTop}" == "" ]; then

    scriptlocation=$(dirname $0)
    etclocation=${scriptlocation}/../etc

    source ${scriptlocation}/tools/functions.sh

    LifoTop=/root/lifo
    LfsTop=/root/lfs

    mkdir ${verbose} --parents ${LfsTop}/{bootstrap,iterim,final,tools,sources}

fi

