#!/sbin/sh
relink() {
	/sbin/cp $1 ${1}_old
	sed 's|/system/bin/linker|///////sbin/linker|' "${1}_old" > "$1"
	chmod 755 $1
}

relink /sbin/qseecomd
relink /sbin/android.hardware.gatekeeper@1.0-service
relink /sbin/android.hardware.keymaster@3.0-service

/sbin/setprop crypto.ready 1
