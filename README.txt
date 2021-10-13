 sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
 sudo chmod +x /usr/local/bin/docker-compose
 sudo docker-compose build 
 sudo docker-compose run --rm --name latex -v "$PWD":/usr/src/app \
 -w /usr/src/app texlive arara -v essay.tex 
