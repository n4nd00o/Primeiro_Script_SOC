# 🛡️ SOC Audit Script | Automação de Segurança e Auditoria

![Bash](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Security](https://img.shields.io/badge/SOC-Operations-red?style=for-the-badge)

## 📝 Sobre o Projeto
Este repositório contém um script desenvolvido em **Bash** focado em tarefas críticas de um **SOC (Security Operations Center)**. A ferramenta automatiza a auditoria de disponibilidade de serviços web e a gestão de higiene de arquivos no sistema, garantindo que logs e arquivos antigos não comprometam a performance ou a segurança.

---

## ⚙️ Funcionalidades
* **Monitoramento de Uptime:** Verificação instantânea de conectividade via protocolos HTTP/HTTPS.
* **Log de Auditoria:** Geração automática de relatórios datados (`Auditoria_AAAA-MM-DD.log`).
* **Gestão de Armazenamento:** Localização de arquivos com mais de 30 dias para conformidade com políticas de retenção.
* **Tratamento de Erros:** Lógica de interrupção (`exit 1`) em caso de falha crítica de serviço.

---

## 🛠️ Tecnologias e Comandos Utilizados

| Recurso | Aplicação no Script |
| :--- | :--- |
| **`curl -s -I`** | Realiza requisições silenciosas para validar o status do cabeçalho HTTP. |
| **`find`** | Filtra e localiza arquivos por tipo (`-f`) e data de modificação (`-mtime`). |
| **`Variables`** | Uso de variáveis dinâmicas para nomes de arquivos e URLs. |
| **`Exit Codes`** | Captura do status de saída (`$?`) para validação de sucesso ou erro. |
| **`Redirecionamento`** | Uso de `>>` para persistência de dados e `&> /dev/null` para limpeza de saída. |

---

## 🧠 Aprendizados Consolidados
A construção deste script permitiu o desenvolvimento de competências técnicas em **DevOps** e **Cybersecurity**:

* **Automação de Rotinas:** Entendimento de como substituir processos manuais por scripts escaláveis.
* **Modularização de Código:** Criação de funções específicas (`checar_status`, `encontrar_arquivos`) para organização e reuso.
* **Gestão de Incidentes:** Implementação de alertas simples via log para identificar serviços offline.
* **Manipulação de File Systems:** Domínio de comandos de busca e filtragem profunda no Linux.

---

## 🚀 Como Utilizar

1. **Clone este repositório:**
   ```bash
   git clone [https://github.com/seu-usuario/seu-repositorio.git](https://github.com/seu-usuario/seu-repositorio.git)
