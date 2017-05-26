function InstallPKG {
    source ${PORTS}/${1}/full
}

function CheckDeps {
    for depitem in ${dependencies[*]}
    do
        if [ ! -d ${IPLACE}/${depitem} ]
        then
            echo ${depitem} is absent
            source ${PORTS}/${depitem}/full
        else
            echo ${deptest} is installed!
        fi
    done
}
