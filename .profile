source "$HOME/.cargo/env"
export JDK_HOME=/usr/lib/jvm/java-11-openjdk/
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk/
export ENV=.rc

for script in /etc/profile.d/*.sh ; do
        if [ -r $script ] ; then
                . $script
        fi
done
PLAN9=/home/g0r3/clones/plan9port export PLAN9
PATH="$PATH:$HOME/bin:$PLAN9/bin"

