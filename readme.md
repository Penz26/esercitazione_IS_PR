# Progetto Lab Infrastructure

Repository di test per imparare il workflow Git/GitHub basato su Issue e PR.

## Gruppi da 4

## Setup
1. Crea una repository con i file di questa cartella
2. Vai in **Settings > Branches** e aggiungi una **Branch Protection Rule** sul main.
3. Spunta **"Require a pull request before merging"** e **"Require approvals"**.
4. In questo modo GitHub blocca chi prova a fare un merge da solo e dice "we we, ti serve l'approvazione di un collega"

## Task Disponibili da Sistemare
> ⚠️ Per ognuna delle task crea una ISSUE
- **Fix Backup:** Lo script `backup.sh` non crea la cartella di destinazione.
- **Add Redis:** Aggiungi Redis al `docker-compose.yml`.
- **Nginx Security:** Nascondi la versione di Nginx in `nginx.conf`.
- **Inventory Update:** Aggiungi nuovi server in `inventory.yml`.

## Regole esercitazione
1. Scegli una **Issue** aperta su GitHub.
2. Crea un branch locale: `git checkout -b fix/nome-task`.
3. Modifica i file necessari.
4. Fai il commit: `git commit -m "tipo: descrizione della modifica"`.
5. Fai il push: `git push origin nome-branch`.
6. Apri una **Pull Request** scrivendo `Closes #ID_ISSUE` nella descrizione.
7. Chiedi a un collega di farti la **Code Review**, una volta che la approva, concludi il merge della Pull Request.

