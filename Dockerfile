FROM rocker/tidyverse

WORKDIR /opt/crypto

COPY . .

RUN apt-get update 
 
RUN install2.r --error \
    polite\
    kableExtra \
    gt \
    blastula \
    webshot 
    
CMD ["/bin/bash"]

ENTRYPOINT ["/opt/crypto/scripts/build.sh"]

