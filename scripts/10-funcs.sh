function CleanWorks {
    rm -rfv ${PORTS}/${1}/work
}

function InstallPKG {
    source ${PORTS}/${1}/full
    CleanWorks ${1}
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
