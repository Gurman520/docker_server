FROM ubuntu:22.04 as storagebuilder

# update everything
RUN apt update -y && apt upgrade -y && apt install git -y

# install pip3
RUN apt -y install python3-pip

# install python dev
RUN apt install -y build-essential libssl-dev libffi-dev python3-dev && apt install -y python3-venv

# clone some code
RUN git clone https://github.com/Gurman520/diplom_server.git

# Setup
RUN cd ./diplom_server && pip3 install -r requirements.txt

# RUN python3 -m venv env && ./env/bin/activate

# install python libraries
# RUN pip3 install -r requirements.txt

CMD [ "./entrypoint.sh" ]