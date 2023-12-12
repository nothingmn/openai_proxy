ARG OPENAI_API_KEY=XXXXX
FROM nginx:1.25.3
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
#COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/startup.sh /startup.sh
EXPOSE 80
ENTRYPOINT ["/startup.sh"]
CMD ["bash"]
