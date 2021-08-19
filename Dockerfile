FROM python:3.9-slim-buster
RUN pip install ansible==4.4.0 && \
    pip install ansible-runner==1.4.0 && \
    pip install ansible-runner-http==1.0.0 && \
    pip install openshift==0.12.1 && \
    rm-rf/root/.cache/pip
RUN apt install curl
WORKDIR /staging
COPY script.sh /staging/script.sh
RUN chmod +x /staging/script.sh
RUN sh /staging/script.sh
