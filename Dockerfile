FROM nginx
RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.bak
COPY conf/proxy.conf /etc/nginx/conf.d/
# COPY conf/load_balancer.conf /etc/nginx/conf.d/
