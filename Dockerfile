FROM quay.io/nyulibraries/nginx:1.17.3-0-pre

# Custom config files
COPY --chown=nginx:nginx conf.d/default.conf /etc/nginx/conf.d/default.conf

# COPY --chown=nginx:nginx script/docker-entrypoint.sh .
USER root
RUN chown -R nginx:nginx /etc/nginx/conf.d/
USER nginx

# ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]