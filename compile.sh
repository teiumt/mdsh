cd str_cmb && make && cd ../
cd bci && sh compile.sh && cd ../
cd qcr && sh compile.sh && cd ../
sh clean.sh
gcc -c -std=gnu11 -Istr_cmb/inc -o mdsh.o mdsh.c
gcc -std=c11 -Lqcr/lib -Iqcr/inc -Iqcr/mdlerr/inc -Lstr_cmb/lib -o bin/mdsh main.c mdsh.o -lmdl-str_cmb -lmdl-qcr
