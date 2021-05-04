echo "${jarFile}"

PROXY_PORT=1000
for i in "$@"
do
echo "i $i"
case $i in
    --test=*)
    PROXY_PORT="${i#*=}"
    ;;
esac
done
echo $PROXY_PORT
java -jar target/${jarFile}.jar