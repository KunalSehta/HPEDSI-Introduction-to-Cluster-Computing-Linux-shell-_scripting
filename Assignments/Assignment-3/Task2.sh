for i in `ls input*old`
    do echo now on $i
         /bin/mv  $i `echo $i | tr   [a-z]   [A-Z]  |  sed s/OLD/new/1`
 done 


for i in `seq 1 50`
    do echo now on $i
         /bin/mv  INPUT"$i".new   input"$i".NEW   
 done 

