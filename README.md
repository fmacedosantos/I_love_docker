# Publicando uma imagem no Docker Hub
- Primeiramente, faça login:
```bash
docker login -u <nome_usuario>
```

- Logado, envie a imagem ao Docker Hub:
```bash
docker push <nome_usuario>/<nome_imagem>:<versao>
```
---
> Caso precise, faça uma cópia da imagem com uma nova TAG, **solucionando possíveis erros** ao enviar ela para o Docker Hub com um *nome de usuário* que não seja o mesmo da sua conta na plataforma: `docker tag <imagem_antiga> <imagem_nova>`. Agora tente novamente.