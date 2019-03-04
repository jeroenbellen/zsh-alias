alias javaVersions="/usr/libexec/java_home -V"

function switchJavaVersion() {
    echo 'Switching to version' $1
    export JAVA_HOME=`/usr/libexec/java_home -v $1`
}

alias mci="mvn clean install -T 1C"
alias yolo="mvn clean install -DskipTests -T 1C"
