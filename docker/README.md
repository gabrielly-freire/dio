# Estudos Docker
## O que é Docker?

Docker é uma plataforma open-source que permite criar, implantar e executar aplicações em containers. Containers são ambientes isolados, leves e portáveis que empacotam uma aplicação com todas as suas dependências.

### Vantagens do Docker:
- **Isolamento**: Cada container roda isoladamente
- **Portabilidade**: "Funciona na minha máquina" não é mais problema
- **Eficiência**: Menos recursos que máquinas virtuais
- **Consistência**: Mesmo ambiente em desenvolvimento e produção

## Baixar Imagens

Imagens são templates read-only usados para criar containers.

```
docker pull nome-imagem[:tag]
```

**Exemplos:**
```
docker pull ubuntu
docker pull nginx:latest
docker pull python:3.9-alpine
```

## Executar Containers

### Comando básico:
```
docker run nome-imagem
```

### Modo Interativo:
```
docker run -it ubuntu
```
- `-i`: Modo interativo
- `-t`: Aloca um pseudo-terminal

### Modo Daemon (background):
```
docker run -d nginx
```
- `-d`: Detach (executa em segundo plano)

### Combinando flags:
```
docker run -dti --name MeuContainer ubuntu
```

## Gerenciar Containers

### Listar containers:
```
docker ps          # Containers ativos
docker ps -a       # Todos os containers
docker ps -q       # Apenas IDs
```

### Parar/Iniciar/Reiniciar containers:
```
docker stop nome_ou_id
docker start nome_ou_id
docker restart nome_ou_id
```

### Acessar container em execução:
```
docker exec -it nome_ou_id /bin/bash
```

### Remover containers:
```
docker rm nome_ou_id
docker container prune  # Remove todos parados
```

## Gerenciar Imagens

### Listar imagens:
```
docker images
```

### Remover imagens:
```
docker rmi id_imagem
docker image prune  # Remove imagens não usadas
```

## Trabalhar com Arquivos

### Copiar para o container:
```
docker cp arquivo.txt meu-container:/caminho/destino/
```

### Copiar do container:
```
docker cp meu-container:/caminho/arquivo.txt ./
```

## Tags e Versões

Tags especificam versões de imagens:

```
docker pull debian:9
docker pull node:14-alpine
docker pull mysql:8.0
```

## Exemplo Prático: MySQL

### Criar container MySQL:
```
docker run -e MYSQL_ROOT_PASSWORD=Senha123 \
           --name mysql-container \
           -d -p 3306:3306 \
           mysql:8.0
```

### Flags importantes:
- `-e`: Define variáveis de ambiente
- `-p`: Mapeamento de portas (host:container)
- `--name`: Nome do container

## Volumes e Persistência

### Tipos de mount:
- **Bind Mount**: Mapeia diretório do host
- **Volume**: Gerenciado pelo Docker
- **tmpfs**: Em memória

### Exemplo com volume:
```
docker run -v /data/mysql:/var/lib/mysql mysql
```

### Criar volume:
```
docker volume create meu-volume
```

## Monitoramento

### Estatísticas em tempo real:
```
docker stats nome-container
```

### Logs do container:
```
docker logs nome-container
docker logs -f nome-container  # Follow (tempo real)
```

### Informações do sistema:
```
docker info
docker system df  # Uso de disco
```

## Atualizar Containers

### Limitar recursos:
```
docker update --memory 512M --cpus 1.5 nome-container
```

## Dockerfiles

Dockerfile é um script para construir imagens personalizadas.

### Exemplo básico:
```
FROM ubuntu:20.04

RUN apt update && apt install -y python3 pip

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python3", "app.py"]
```

### Comandos do Dockerfile:

| Comando    | Descrição                            |
|------------|--------------------------------------|
| FROM       | Imagem base                          |
| RUN        | Executa comando durante build        |
| COPY       | Copia arquivos do host               |
| ADD        | Similar COPY + descompactar          |
| WORKDIR    | Define diretório de trabalho         |
| EXPOSE     | Documenta portas usadas              |
| ENV        | Define variáveis de ambiente         |
| CMD        | Comando padrão ao executar container |
| ENTRYPOINT | Comando principal do container       |
| VOLUME     | Cria ponto de montagem               |
| LABEL      | Adiciona metadados                   |

### Construir imagem:
```
docker build -t minha-app .
docker build -t minha-app:v1.0 .
```

## Redes no Docker

### Listar redes:
```
docker network ls
```

### Criar rede:
```
docker network create minha-rede
```

### Conectar container à rede:
```
docker network connect minha-rede meu-container
```

## Comandos Úteis

### Limpeza:
```
docker system prune     # Remove tudo não utilizado
docker volume prune     # Remove volumes não usados
docker image prune      # Remove imagens não usadas
```

### Inspecionar:
```
docker inspect nome-container
docker logs nome-container
```

### Variáveis de ambiente:
```
docker run -e VARIAVEL=valor imagem
```