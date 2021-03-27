FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx-template.conf
COPY run.sh /run.sh


ENTRYPOINT '/run.sh'
