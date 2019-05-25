# Grupa nr. 3: Jak przygotować się do warsztatów?

## Konfiguracja środowiska

1. [Edytor tekstu](/workshop-setup/partials/edytor-tekstu.md)
2. [Przeglądarka](/workshop-setup/partials/przegladarka.md)

    Zainstalować następujące pluginy w przeglądarce:

    + React DevTools

3. [Node.js + npm](/workshop-setup/partials/node+npm.md)
4. Git
    + [Instalacja](/workshop-setup/partials/git-instalacja.md)
    + [Integracja z GitHub-em](/workshop-setup/partials/git-integracja-z-github.md)
    + [Konfiguracja użytkownika](/workshop-setup/partials/git-konfiguracja-uzytkownika.md)
    + [Konfiguracja globalna](/workshop-setup/partials/git-konfiguracja-globalna.md)

## Konfiguracja projektu `warsawjs-workshop-32-book-it`

* Sklonować projekt na GitHubie <https://github.com/G3F4/warsawjs-workshop-32-book-it>
* Zmienić na branch `etap-0`
* Zainstalować zależności `yarn` lub `npm i`:
* Uruchomić aplikację i sprawdzić w przeglądarce na `localhost:3000`

## Weryfikacja

Aby sprawdzić konfigurację systemu, należy uruchomić:

```bash
mkdir -p /tmp/
curl -sSL https://raw.githubusercontent.com/warsawjs/workshop-setup/master/32/.solidarity.json > /tmp/.solidarity.json
npx solidarity -f /tmp/.solidarity.json
rm /tmp/.solidarity.json
```

_Dla Windows: Uruchom powyższe polecania w `Git Bash`._
