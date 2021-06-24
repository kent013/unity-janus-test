# unity-janus-test

サーバーに展開しない場合、
https://github.com/kent013/unity-janus-test/blob/main/docker-compose.yml#L36-L37

```
VIRTUAL_HOST: 192.168.1.9
SELF_SIGNED_HOST: 192.168.1.9
```

をローカルのサーバーアドレスにすること

```
./scripts/docker.sh u
```

または

```
docker compose up
```

で、サーバーが立ち上がる。

上記アドレスであれば、
https://192.168.1.9/
や
https://192.168.1.9/audiobridgetest.html
にアクセスするとデモが動かせる。

SSL証明書の警告は`resources/certs/ca.crt`をブラウザで信用する必要がある。
iOSと接続する場合には、AirDrop等で証明書を転送し、インストールすること。

