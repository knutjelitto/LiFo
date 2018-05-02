function get-lfs-script {
    echo ${scriptlocation}/lfs/${1}.sh
}

function get-pkg-script {
    echo ${scriptlocation}/pkg/${1}.sh
}

function unmount-all {
    local lfs=$1
    while mount | grep -q "/${lfs}/"; do
        mount | grep "/${lfs}/" | cut -f3 -d" " | sort | head --lines=1 | while read mountpoint; do
            echo "umount ${mountpoint}"
            umount --recursive ${mountpoint}
        done
    done
}

