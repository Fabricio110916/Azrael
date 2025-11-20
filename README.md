# Cloudflare Proxy - Go + Workers Container

Este projeto roda um Proxy HTTP → TCP/WebSocket escrito em Go **dentro do novo sistema Cloudflare Workers Container**.

## 📌 Tecnologias
- Go (HTTP Hijack)
- Cloudflare Workers
- Workers Container
- Dockerfile nativo

## 🚀 Deploy

1. Instale o Wrangler:
   npm install -g wrangler
2. Faça login:
   wrangler login
3. Suba o container:
   wrangler deploy
## 🌐 Rotas
Defina seu domínio dentro de `wrangler.jsonc`:
```json
"routes": [
  {
    "pattern": "seu-dominio.com/*",
    "zone_id": "SEU_ZONE_ID"
  }
]
Seu proxy Go rodará na porta interna 8080, acessível pela CDN da Cloudflare.

✔️ Compatível com:

SSH

WebSocket

V2Ray

Túnel TCP completo

CDN Cloudflare + HTTPS


---
