FROM ubuntu:14.04
#need utf8 for hakyll rebuild
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8 
RUN apt-get update
RUN apt-get install -y zlib1g-dev libghc-zlib-dev git-core cabal-install vim
RUN rm -r /var/lib/apt/lists/*
RUN cabal update
#guess we don't need this now... leaving here for issues later or debian
#RUN cabal install cabal-install --global
RUN cabal install hakyll --global
