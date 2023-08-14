docker run -it -d --gpus all --ipc=host --net=host -p 80:80 --name=qwen \
    --ulimit memlock=-1 --ulimit stack=67108864 \
    -v `pwd`:/workspace \
    llm-api:pytorch \
    python api/app.py \
    --port 80 \
    --allow-credentials \
    --model_name qwen \
    --model_path Qwen/Qwen-7B-Chat \
    --device cuda \
    --embedding_name moka-ai/m3e-base