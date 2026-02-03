

# Open5GS 5G Core – Ambiente Docker Compose

Este repositório contém um ambiente **Open5GS 5G Core** orquestrado com **Docker Compose**, atendendo aos requisitos mínimos de inicialização do core, exposição de interfaces e validação de funcionamento.

O objetivo é disponibilizar um **core 5G funcional**, pronto para integração futura com RAN/UE (ex.: UERANSIM).

---

## 📦 Entregáveis

Este repositório contém:

- `docker-compose.yml` – Orquestração dos serviços do Open5GS
- `README.md` – Documentação completa (instalação, execução e validação)
- `.env` – Arquivo de parametrização do ambiente
```bash
MONGOUSER=
MONGOPASS=
```

- `start.sh` *(opcional)* – Script para subir o ambiente
- `stop.sh` *(opcional)* – Script para derrubar o ambiente

Evidências esperadas (a serem coletadas pelo avaliador):

- Containers em execução (`docker ps`)
- Logs de boot correto dos serviços do core
- Evidência de conectividade e portas expostas (`ss`)

---

## 🧱 Arquitetura do Ambiente

O ambiente é composto, no mínimo, por:

- **Mongo-Express** – Banco de dados do Open5GS
- **MongoDB** – Banco de dados do Open5GS
- **Open5Gs** – Network Repository Function

Todas as funções são executadas como **containers Docker**, orquestrados via **Docker Compose**.

---

## 🖥️ Requisitos do Sistema

- Sistema operacional: **Ubuntu 22.04+** (ou equivalente Linux)
- Docker:
  ```bash
  docker --version




###  1️⃣ Clonar o repositório

```bash
git clone <URL_DO_REPOSITORIO>
cd open5gs-docker
```

###  2️⃣ Configurar variáveis de ambiente

```bash
cp .env.example .env
```



###  ▶️ Execução do Ambiente

```bash
docker compose up -d
```




## 📁 Evidências (Checklist)

Durante a validação, recomenda-se coletar:

 Print do docker ps

 Logs do boot dos serviços principais

 Evidência de portas expostas (ss, nc, curl)

 Logs de healthcheck (se aplicável)