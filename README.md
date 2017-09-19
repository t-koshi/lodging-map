# lodging-map

## Docker

起動
```
docker-compose run  --rm --service-ports web bundle exec rails s -b 0.0.0.0
```

コンソール
```
docker-compose run web bash
```

コンテナ一覧
```
docker ps -a
```

コンテナ削除
```
docker ps -a | grep 'lodging' | awk '{print $1}' | xargs docker rm
```

docker logsで表示されるログの場所
```
docker inspect {コンテナID} | grep log
```
