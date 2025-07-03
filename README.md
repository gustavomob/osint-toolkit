# 🕵️ OSINT Toolkit - Menu Interativo em Shell Script

Projeto simples e prático para realizar **coleta de informações públicas (OSINT)** direto do terminal.  
Com um **menu interativo em `bash`**, você pode executar vários scripts que automatizam tarefas comuns de reconhecimento em segurança da informação.

---

## 📁 Scripts Disponíveis

| Script              | Descrição                                                                 |
|---------------------|---------------------------------------------------------------------------|
| `menu.sh`           | Menu principal interativo com opções para cada script                     |
| `dominio.sh`        | Coleta informações sobre domínios                                         |
| `sherlock.sh`       | Busca nomes de usuário em diversas redes sociais (requer Sherlock)        |
| `ips.sh`            | Mostra IPs relacionados ao domínio informado                              |
| `links.sh`          | Extrai links internos e externos de um site                               |
| `instagram.sh`      | Faz download de perfil público do Instagram (ex: via `instaloader`)       |
| `whatweb.sh`        | Identifica tecnologias usadas em um site com o WhatWeb                    |
| `scan-ports.sh`     | Scanner de portas com `nmap`                                              |
| `subdominios.sh`    | Enumeração de subdomínios (usa `subfinder`, `assetfinder`, ou `dnsrecon`) |
| `subdominios.txt`   | Wordlist com nomes de subdomínios usados no script                        |

---

## 📋 Funcionalidades (Menu)

```
===== Menu OSINT =====
1. Info de Domínio
2. Buscar usuário em redes sociais
3. IPs do host
4. Links do host
5. Baixar perfil do Instagram
6. Scan de site (whatweb)
7. Scan de portas
8. Scan subdomínios
0. Sair
=======================
```

📁 Estrutura do Projeto
```
osint-toolkit/
├── dominio.sh
├── instagram.sh
├── ips.sh
├── links.sh
├── menu.sh
├── scan-ports.sh
├── sherlock.sh
├── subdominios.sh
├── subdominios.txt
├── whatweb.sh
```

🚀 Como executar

1. Clone o repositório:
```
git clone https://github.com/seu-usuario/osint-toolkit
cd osint-toolkit
```

2. Dê permissão de execução aos scripts:
```
chmod +x *.sh
```

3. Execute o menu principal:
```
./menu.sh
```

🧰 Requisitos

Instale essas ferramentas para garantir o funcionamento dos scripts:

- bash
- nmap
- whatweb
- sherlock
- instaloader
- dig, host, curl, wget, grep
- Para subdominios.sh: subfinder, assetfinder, ou outras ferramentas de enumeração
  

⚠️ Aviso Legal

Este projeto é voltado para fins educacionais e éticos.
O uso não autorizado para fins maliciosos, ataques ou invasões é ilegal.
O desenvolvedor não se responsabiliza pelo uso indevido deste material.

👨‍💻 Autor
Desenvolvido por Gustavo Souza


