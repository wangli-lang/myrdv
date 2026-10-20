#!/bin/sh

# 替换配置文件中的 UUID
echo "替换变量"
sed -i "s/PASTE_YOUR_UUID_HERE/$UUID/g" config.json
sed -i "s/RENDER_PORT/$PORT/g" config.json

# 后台运行 sing-box
echo "start server"
sing-box run -c config.json

# 运行 Cloudflare Tunnel
#cloudflared tunnel --no-autoupdate run --token $ARGO_TOKEN
