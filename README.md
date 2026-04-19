###  Estudo de git

Este repositório contém uma simulação de projeto para estudar e treinar comandos git.

---

###  Tecnologias Utilizadas

- Robot Framework  
- SeleniumLibrary  
- Python  
- Git

---

### Estrutura de comandos

Inicialização do repositório:

- 1️⃣ Após criar a pasta do projeto, abra-a no terminal e execute:

```bash
git init
git status
```
Depois crie a branch principal:
```bash
git branch -M main
```
####  Criando o arquivo .gitignore

O `.gitignore` define arquivos e pastas que o Git não deve versionar.

Criar o arquivo `.gitignore` no VS Code
E dentro dele colocar:

```bash
# ===============================
# Python
# ===============================

__pycache__/
*.pyc
*.pyo
*.pyd

# Virtual environments
venv/
.env/
.envrc

# ===============================
# Robot Framework outputs
# ===============================

output.xml
log.html
report.html

# Screenshots gerados pelos testes
*.png

# Pastas comuns de resultados
results/
reports/
logs/
screenshots/

# ===============================
# Test artifacts / temporary
# ===============================

*.log
*.tmp
*.cache

# ===============================
# IDE / Editor
# ===============================

.vscode/
.idea/

# ===============================
# Sistema operacional
# ===============================

.DS_Store
Thumbs.db

# ===============================
# Arquivos sensíveis
# ===============================

*.env
*.secret
*.key
*.pem
```

📌 O .gitignore não remove arquivos que já foram versionados.
Para parar de versionar um arquivo use:
```bash
git rm --cached arquivo
```



- 2️⃣ ***Se*** for conectar ao GitHub pela primeira vez:

Crie o repositório no GitHub (vazio)
Conecte o repositório local ao Github que foi criado:
```bash
git remote add origin https://github.com/SEU_USUARIO/nome_do_repositorio
git remote -v
```
Espera-se aparecer:
```bash
origin  https://github.com/Seu_Usuário/nome_do_repositorio (fetch)
origin  https://github.com/Seu_Usuário/nome_do_repositorio (push)
```

 Crie o primeiro commit para enviar a branch main pela primeira vez:
- Fazer alguma alteração, por exemplo criar a estrutura de pastas e:
```bash
git status
git add .
git commit -m "commit inicial do projeto"
git push -u origin main
```
📌 O -u cria o vínculo entre:

- main local

- main remota (origin/main)

Depois disso, basta usar:
```bahs
git push
git pull
```

#### Começo do dia de trabalho em equipe (ROTINA OBRIGATÓRIA)
```bash
git switch main
git pull
git status
```

📌 Nunca comece a trabalhar sem `git pull` quando estiver trabalhando em time. 
📌 Para treino solo, o `git pull` pode ser dispensado desde que nada tenha sido alterado no GitHub.

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
📌 Fazer um `git add` seguido de um `git commit` por tipo de alteração

##### Commits locais vs push
Só para fixar conceito:

```md
📌 Commits são locais.  
📌 git push envia todos os commits pendentes de uma vez para o GitHub.
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
  - abre PR
  - revisão 
  - aprovação
  - merge
  - deletar branch remota

Se o PR não abrir automaticamente, faça isso para abrir manualmente:
1️) Vá até o repositório no GitHub
2️) Clique em **Pull requests**
3️) Clique em **New pull request**
4️) Em **base** selecione: main
5) Em **compare** selecione: nova-branch
6) Clique em **Create pull request**
Pronto 🎉
Então só fazer a aprovaçào e o **merge** normalmente


📌 O `git merge` local é usado apenas para treino ou projetos sem PR. Em trabalho em time, o merge acontece no GitHub via Pull Request.


- 1️⃣0️⃣ Atualizar seu Git local após PR
```bash
git switch main
ou 
git checkout main

git pull (trazer alteração do github remoto para local)
```

- 1️⃣1️⃣ Limpar branch local
```bash
git branch -d feature-nome-da-tarefa
git fetch --prune (limpar referências de branches remotas que já foram deletadas no GitHub, para manter git limpo)
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

 🔍 Ver repositório vinculado
 ```baah
 git remote -v
 ```
 🔍 Ver detalhes da conexão
 ```bahs
 git remote show origin
 ```


---
### 🎯 SCRIPT MENTAL (decisão rápida)
```bash
Começar (em time) → git pull
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
### ⚠️ Erros comuns e correções rápidas

#### Fiz alterações antes de criar branch
```bash
git switch -c feature-nova
```
#### Comitei na branch errada
```bash
git switch -c feature-correta
git switch main
git reset --hard HEAD~1 (⚠️ Usar apenas se o commit ainda NÃO foi enviado ao GitHub.)
```
#### Stage misturado (git add)
```bash
git reset
```
📌 tira tudo do stage, depois adicione as pastas/arquivos separados.
#### Commit misturado
primeiro:
```bash
git reset --soft HEAD~1
```
depois:
```bash
git reset
```
📌 primeiro desfaz commit, depois tira tudo do stage para então adicionar as pastas/arquivos separados.

#### Quero alterar o repositório remoto para outro nome

Após ter alterado o nome do repositório no GitHub, faça assim para alterar o repositório remoto:
```bash
git remote set-url origin https://github.com/SEU_USUARIO/NOVO_REPO.git
```
#### Para parar de versionar um arquivo use:
```bash
git rm --cached arquivo
```


---
### ✅ Se você seguir esse script
Você:
- não se perde
- não quebra branch
- não cria histórico ruim
- trabalha como QA de time
- responde entrevista com segurança
---

Criado com carinho por ***Matheus Ywata*** 💚

