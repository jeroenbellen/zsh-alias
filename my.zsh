alias javaVersions="/usr/libexec/java_home -V"

function switchJavaVersion() {
    echo 'Switching to version' $1
    export JAVA_HOME=`/usr/libexec/java_home -v $1`
}

alias mci="mvn clean install -T 1C"
alias yolo="mvn clean install -DskipTests -T 1C"

function listeningOnPorts() {
    netstat -Watnlv | grep LISTEN | awk '{"ps -o comm= -p " $9 | getline procname;colred="\033[01;31m";colclr="\033[0m"; print colred "proto: " colclr $1 colred " | addr.port: " colclr $4 colred " | pid: " colclr $9 colred " | name: " colclr procname;  }' | column -t -s "|"
}
