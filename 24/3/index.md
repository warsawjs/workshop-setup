# Grupa nr 3: Jak się przygotować do warsztatów?

1. zapoznać się z
    [domyślnym config-iem](https://warsawjs.github.io/workshop-setup/21/)
    i wykonać następujące punkty stamtąd:
    1. [Edytor tekstu](https://warsawjs.github.io/workshop-setup/partials/edytor-tekstu.html)
    2. [Przeglądarka](https://warsawjs.github.io/workshop-setup/partials/przegladarka.html)
    3. [Node.js + NPM](https://warsawjs.github.io/workshop-setup/partials/node+npm.html)
    4. [Git](https://warsawjs.github.io/workshop-setup/partials/git-instalacja.html)
    5. [Projekt opublikowany na GitHub](https://warsawjs.github.io/workshop-setup/partials/opublikuj-projekt-na-github.html)
2. zaciągnąć repozytorium trenera
3. zainstalować niezbędne biblioteki oraz zweryfikować poprawność instalacji
4. wypchnąć zsetupowany projekt na GitHub
5. założyć konto na [Heroku](https://signup.heroku.com/)

## Zaciągnięcie repozytorium trenera

```bash
cd <FOLDER_Z_REPOZYTORIUM>
git checkout master
git remote add starter https://github.com/mykulyak/warsawjs-workshop-24-project
git pull starter master
```

## Zainstalowanie bibliotek

dla użytkowników Windows

```bash
./prepare.cmd
```

dla użytkowników Linux i Mac

```bash
./prepare.sh
```

powyższe polecenia zainstalują wymagane pakiety we wszystkich podprojektach
oraz zweryfikują poprawność instalacji.

## Push zsetupowanego repozytorium na GitHub

```bash
git push origin master
```
