#usr/bin
#usr/sbin

# Created By : Abhishek Sharma
# Massage: This is Portfolio Webpage Executeing using Docker file


docker build -t portfolio:v1 .
docker compose up  portfolio -d

#if [ $? == 0 ] 
#  docker images | grep -i portfolio | awk -F" " '{print $1,$2}' OFS=":" 
  
#else
#  echo "Docker compose file Error Code $?"
#fi


