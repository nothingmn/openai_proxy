cat ./env.list
docker run -it --rm -p 80:80 --name openai_proxy --env-file env.list openai_proxy $@
docker ps
