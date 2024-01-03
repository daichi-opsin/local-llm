## モデルのダウンロード
https://huggingface.co/TheBloke  
から使用したいモデルの.ggufをダウンロードして、modelsに配置し、`docker-compose.yml`でファイルを指定する

## dockerのビルドと起動
8080ポートを利用しているので必要に応じて変更する
```
docker-compose build
docker-compose up -d
```

## 使い方
https://github.com/ggerganov/llama.cpp/blob/master/examples/server/README.md
```
curl --request POST \
    --url http://localhost:8080/completion \
    --header "Content-Type: application/json" \
    --data '{"prompt": "Building a website can be done in 10 simple steps:","n_predict": 128}'
```
