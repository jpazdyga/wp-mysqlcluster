printf "`echo -n "apache1: "``sed -n -e '6,6p' ./hosts`\n" >> ./roles/nginx-lb/defaults/main.yml
printf "`echo -n "apache2: "``sed -n -e '8,8p' ./hosts`\n" >> ./roles/nginx-lb/defaults/main.yml
printf "`echo -n "nginxip: "``sed -n -e '2,2p' ./hosts`\n" >> ./roles/nginx-lb/defaults/main.yml
printf "`echo -n "master_ip: "``sed -n -e '10,10p' ./hosts`\n" >> ./roles/slave/defaults/main.yml
a=$(printf "`echo -n "mysql1="``sed -n -e  '10,10p' ./hosts`\n");sed -i '1s/^/'"${a}"'\n/' ./roles/master/dbscript.sh
a=$(printf "`echo -n "mysql2="``sed -n -e  '12,12p' ./hosts`\n");sed -i '1s/^/'"${a}"'\n/' ./roles/master/dbscript.sh
