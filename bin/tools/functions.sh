function get-lfs-script {
    echo ${scriptlocation}/lfs/${1}.sh
}

function get-pkg-script {
    echo ${scriptlocation}/pkg/${1}.sh
}

function unmount-all {
    local lfs=$1
    while mount | grep -q "/${lfs}/"; do
        mount | grep "/${lfs}/" | cut -f3 -d" " | sort | while read mountpoint; do
            #echo "umount ${mountpoint}"
            mountpoint --quiet ${mountpoint} &>/dev/null && umount --recursive ${mountpoint} &>/dev/null
        done
    done
}

