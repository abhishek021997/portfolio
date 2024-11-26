#usr/bin
#usr/sbin

# Created By: Abhishek Sharma
# Massage: This is Portfolio Webpage Executing using NGINX 

con_name="portfolio"
domain_name="byteportfolio.in"
static_ip="192.168.1.115" # Please Provide your Static IP address

##################### Docker Compose file run ######################
docker compose up -d
####################################################################

 val1=$(docker ps -l | grep -i $con_name | wc -l)
 docker ps -l | grep -i  $con_name | awk -F" " '{print $1}' > container_id
 docker exec -it $con_name sed -i "s/localhost/ $domain_name /" /etc/nginx/conf.d/default.conf
 docker exec -it $con_name certbot --nginx
 ########################
  # docker exec -it $con_name certbot --nginx (this certificate valid to 90 days)  {certbot renew} --> this is certificate renew command 
  # After this command provide all SSL certificate information
  # If not getting any error so SSL is working properly
  # NOW you run your the command "curl https://byteportfolio.in" (IF this command show us our HTML page that's mean all configuration is working properly)
 ########################

 ####################### Host Entry ##################################
 # uncomment this billow line after Provide Static IP in Variable (line 9)
 
 #      sudo echo "$static_ip    $domain_name" >> /etc/hosts

 #####################################################################
 
 
 


