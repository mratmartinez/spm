function CleanWorks {
    if [ ${1} = "@all" ]
    then
        rm -rfv ${PORTS}/*/work
    else
        rm -rfv ${PORTS}/${1}/work
    fi
}

function InstallPKG {
    source ${PORTS}/${1}/full
}

function CheckDeps {
    if [ ! ${#dependencies[@]} -eq 0 ]
    then
        for depitem in ${dependencies[*]}
        do
            if [ ! -d ${IPLACE}/${depitem} ]
            then
                echo ${depitem} is absent
                InstallPKG ${depitem}
            else
                echo ${deptest} is installed!
            fi
        done
    fi
}
