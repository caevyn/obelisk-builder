FROM    trenpixster/elixir:1.0.4
COPY    . /run
WORKDIR /run
RUN     apt-get update && \
        apt-get install -y python-pip && \
        pip install awscli 
CMD     ["sh", "/run/build.sh"]  
