FROM ubuntu:22.04

# update everything
RUN apt update -y && apt upgrade -y && apt install git -y

# install pip3
RUN apt -y install python3-pip

# clone some codedocker system prune -a
RUN git clone https://github.com/Gurman520/diplom_server.git

# Setup
RUN cd ./diplom_server && pip3 install psycopg2-binary && pip3 install -r requirements.txt && cd ..

# copy project
RUN cp -r ./diplom_server/. .
