#!/bin/bash                                                                                                                                     
# bash generate random alphanumeric string                                                                                                      
#                                                                                                                                               
ascii=0
a=''
chr() {
  printf -v a \\$(printf '%03o' $1)
}

ord() {
  printf -v ascii '%d' "'$1"
}
charset=( {0..9} {A..Z} {a..z} )
pwd=""
checksum=0
while [ $checksum -ne 3566 ]
do
    i=$((3566-checksum))
    while [ $checksum -gt 3566 ]
    do
        p=$(echo -n $pwd | tail -c 1)
        ord "$p"
        checksum=$((checksum-ascii))
        pwd=${pwd::-1}
    done
    if [ $i -lt 47 ];then
        p=$(echo -n $pwd | tail -c 1)
        ord "$p"
        checksum=$((checksum-ascii))
        pwd=${pwd::-1}
    elif ([ $i -lt 91 ] && [ $i -gt 64 ]) || ([ $i -lt 126 ] && [ $i -gt 96 ]) || ([ $i -lt 58 ] && [ $i -gt 47 ])
        then
        chr $i
        pwd=$pwd$a
        checksum=$((checksum+i))
    else
         rand=$(( ( RANDOM % 62 )  + 1 ))
         randx=${charset[$rand]}
         ord "$randx"
         checksum=$((checksum+ascii))
         pwd=$pwd$randx
    fi
#    echo $pwd,$checksum                                                                                                                        
done
echo "$pwd"
