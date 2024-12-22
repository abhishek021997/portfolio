#!/usr/bin
#!/usr/sbin


# Created By: Abhishek Sharma
# portfolio: data copy in main server pod


main_srv="portfolio-webpage-1"

####################### Start script #######################
ls project_1/ > web_list



for i in `cat web_list`;
do
    
    docker cp project_1/"$i"  "$main_srv":/var/www/html/resume
    echo "$i Copy data successfully"

done