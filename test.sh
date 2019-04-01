time for i in `seq 10000` 
do
    ./ip1 $i.$i.$i.$i > /dev/null
done

time for i in `seq 10000`
do
    ./ip2 $i.$i.$1.$1 > /dev/null
done
