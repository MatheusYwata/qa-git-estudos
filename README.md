##  Estudo de git

Este repositório contém uma simulação de projeto para estudar e treinar comandos git.

---

##  Tecnologias Utilizadas

- Robot Framework  
- SeleniumLibrary  
- Python  
- Git

---

## Estrutura de comandos

### Inicialização do repositório

- 1️⃣ Após criar a pasta do projeto, abra-a no terminal e execute:

```bash
git init
git status
```
- 2️⃣ Se for conectar ao GitHub pela primeira vez:
```bash
git remote add origin https://github.com/SEU_USUARIO/qa-git-estudos.git
git branch -M main
git push -u origin main
```
- Começo do dia de trabalho (ROTINA OBRIGATÓRIA)
```bash
git switch main
git pull
git status
```

📌 Nunca comece a trabalhar sem `git pull` quando estiver trabalhando em time. Para fins de treino solo o `git pull`é dispensável.

- 3️⃣ Criar branch para trabalhar
```bash
git switch -c feature-nome-da-tarefa
ou
git checkout -b feature-nome-da-tarefa
```
Conferir:
```bash
git branch
```
- 4️⃣ Trabalhar nos arquivos (VS Code)
Aqui você:

  - cria cenários
  - ajusta keywords
  - edita resources

Depois sempre:
```bash
git status
git diff
```
- 5️⃣ Escolher o que vai entrar no commit
```bash
git add tests/login.robot
```
Pasta inteira:
```bash
git add resources/
```
Parte do arquivo (quando necessário):
```bash
git add -p tests/login.robot
```
Conferir:
```bash
git status
```
- 6️⃣ Commit (mensagem clara)
```bash
git commit -m "test: adicionar cenário de login com usuário inativo"
```
- 7️⃣ Corrigir o último commit (se precisar)
```bash
git add arquivo-esquecido
git commit --amend
```
- 8️⃣ Subir branch para o GitHub
```bash
git push origin feature-nome-da-tarefa
```
- 9️⃣ Pull Request (no GitHub)
No site:
  - abri PR
  - revisão 
  - aprovação
  - merge
  - deletar branch remota


- 1️⃣0️⃣ Atualizar seu Git local após PR
- 1️⃣1️⃣ Limpar branch local
```bash
git branch -d feature-nome-da-tarefa
git fetch --prune
```

---

### 🔍 COMANDOS DE APOIO (USO FREQUENTE)
📜 Histórico
```bash
git log --oneline --decorate --graph
```
🔎 Ver conteúdo do commit
```bash
git show
```
🧹 Descartar alteração local
```bash
git restore arquivo
```
📦 Guardar trabalho temporariamente
```bash
git stash
git stash pop
```
---
### 🎯 SCRIPT MENTAL (decisão rápida)
```bash
Começar → git pull
Trabalhar → git status / git diff
Commitar → git add / git commit
Erro → git commit --amend
Subir → git push
PR → GitHub
Atualizar → git pull
Limpar → git branch -d
```
---
### 🧠 PADRÃO DE NOMES (boa prática QA)
#### Branch
```bash
feature-login-inativo
bugfix-cenario-expirado
refactor-keywords-login
```
#### Commit
```bash
test: adicionar cenário de login inválido
test: refatorar keyword de autenticação
docs: atualizar README
chore: ajustar estrutura de pastas
```
---
### ✅ Se você seguir esse script
Você:
- não se perde
- não quebra branch
- nào cria histórico ruim
- trabalha como QA de time
- responde entrevista com segurança
---

Criado com carinho por ***Matheus Ywata*** 💚

