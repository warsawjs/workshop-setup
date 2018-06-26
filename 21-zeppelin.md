<link rel="shortcut icon" href="./favicon.ico" type="image/x-icon"/>

# Co jest potrzebne na `WARSAWJS_REPO_NAME`?

1. [Edytor tekstu](#edytor-tekstu)
2. [Node.js + npm](#nodejs--npm)
3. [git](#git)
4. [Stworzony projekt dzięki create-react-app](#create-react-app)
5. [Stworzony projekt opublikowany na GitHub](#opublikuj-projekt-na-github)

## Edytor tekstu

Pamiętaj, aby mieć zainstalowany edytor tekstu np.

* VSCode – [https://code.visualstudio.com/](https://code.visualstudio.com/)
* Atom – [https://atom.io/](https://atom.io/)
* WebStorm – [https://www.jetbrains.com/webstorm/](https://www.jetbrains.com/webstorm/)

## Node.js + npm

### Wymagane wersje

* Node.js – min. 8.11.3

    ```bash
    node --version
    # v8.11.3
    ```

* npm – min. 5.6.0

    ```bash
    npm --version
    # 5.6.0
    ```

### Instalacja

#### MacOS i Windows

1. Wejdź na [https://nodejs.org/en/](https://nodejs.org/en/) i ściągnij wersję 10.4.1.
2. Uruchom ściągnięty program i go zainstaluj
3. Sprawdź w wierszu poleceń wersję node i npm (patrz [Wymagane wersje](#wymagane-wersje))

### Inne systemy

1. [https://nodejs.org/en/download/package-manager/](https://nodejs.org/en/download/package-manager/)
2. Sprawdź w wierszu poleceń wersję node i npm (patrz [Wymagane wersje](#wymagane-wersje))

## Git

Jeśli nie masz jeszcze zainstalowanego i/lub skonfigurowanego gita użyj jednej
z podanych poniżej instrukcji.

### GitHub Desktop

**Tylko dla Windows i MacOS**

GitHub Desktop jest to klient graficzny do obsługi gita w połączeniu z GitHubem.

1. Ściągnij aplikację z [https://desktop.github.com/](https://desktop.github.com/)
2. Rozpakuj archiwum
3. Uruchom aplikację
4. Naciśnij `Sign into Github.com`
5. Wpisz swoje dane z [github.com](https://github.com)

### Wiersz poleceń

#### Instalacja

##### Windows

Zainstaluj gita używając tego instalatora: [https://git-scm.com/download/windows](https://git-scm.com/download/windows)

##### MacOS

Zainstaluj gita używając tego instalatora: [https://git-scm.com/download/mac](https://git-scm.com/download/mac).

##### Linux

W systemie Linux gita możesz zainstalować poprzez komendę:

###### Debian (np. Ubuntu)

```bash
apt-get install git
```

###### Fedora

```bash
yum install git-core
```

#### Działa?

Pamiętaj, aby sprawdzić czy git został poprawnie zainstalowany poprzez:

```bash
git --version
# git version 2.17.1
```

#### Konfiguracja GitHuba

1. Ustaw nazwę użytkownika poprzez

    ```bash
    git config --global user.name "twoja_nazwa_uzytkownika"
    ```

2. Sprawdź czy nazwa została zmieniona

    ```bash
    git config --global user.name
    # twoja_nazwa_uzytkownika
    ```

3. Ustaw maila poprzez

    ```bash
    git config --global user.email "twoj_email"
    ```

4. Sprawdź czy mail został zmieniony

    ```bash
    git config --global user.email 
    # twoj_email
    ```

## create-react-app

1. Otwórz wiersz poleceń
2. Przejdź do folderu w którym stworzysz folder z projektem
    - `cd nazwa_folderu` – komenda do zmiany folderu
    - `ls` – wypisanie zawartości folderu (macOS/linux)
    - `dir` – wypisanie zawartości folderu (Windows)
3. Wykonaj

    ```bash
    npx create-react-app WARSAWJS_REPO_NAME
    ```

4. Po wykonaniu się komendy naszym oczom powinno ukazać się coś podobnego do

    ```text
    Success! Created WARSAWJS_REPO_NAME at /Users/uzytkownik/Projects/WARSAWJS_REPO_NAME
    Inside that directory, you can run several commands:
    
      npm start
        Starts the development server.
    
      npm run build
        Bundles the app into static files for production.

      npm run test
        Starts the test runner.

      npm run eject
        Removes this tool and copies build dependencies, configuration files and scripts into the app directory. If you do this, you can’t go back!

    We suggest that you begin by typing:

      cd WARSAWJS_REPO_NAME
      npm start

    Happy hacking!
    ```

5. Następnie wykonaj

    ```bash
    cd WARSAWJS_REPO_NAME
    npm start
    ```

6. Po wykonaniu `npm start` powinna otworzyć się przeglądarka, a w niej `http://localhost:3000/`

    ![](./assets/cra-start.png)

## Problem?

Jeśli miałeś problem z instalacją spróbuj:

* Zamiast

    ```bash
    npx create-react-app WARSAWJS_REPO_NAME
    ```

    Użyj

    ```bash
    npm install -g create-react-app
    create-react-app WARSAWJS_REPO_NAME
    ```

* Zamiast

    ```bash
    npx create-react-app WARSAWJS_REPO_NAME
    ```

    Zainstaluj `yarn` poprzez

    ```bash
    npm install -g yarn
    ```

    Następnie

    ```bash
    yarn create react-app WARSAWJS_REPO_NAME
    ```

## Opublikuj projekt na GitHub

### GitHub Desktop

1. Naciśnij `Add a local repository`
2. Jako `Local Path` wpisz lokalizację folderu z projektem
3. Naciśnij `create a repository`
4. Naciśnij `Create Repository`
5. Naciśnij `Publish repository`
6. Naciśnij `GitHub.com`
7. Upewnij się, że `Keep the code private` jest **odznaczone**
8. Naciśnij `Publish repository`
9. Twoje repozytorium jest dostępne na `https://github.com/twoja_nazwa_uzytkownika/WARSAWJS_REPO_NAME`

### Wiersz poleceń

1. Przejdź do folderu z twoim projektem 
    - `cd nazwa_folderu` – komenda do zmiany folderu
    - `ls` – wypisanie zawartości folderu (macOS/linux)
    - `dir` – wypisanie zawartości folderu (Windows)
2. Wykonaj

    ```bash
    git init
    git add .
    git commit -m "Initial commit"
    ```

3. Stwórz repozytorium na GitHub o nazwie `WARSAWJS_REPO_NAME`
4. Wykonaj

    ```bash
    git remote add origin https://github.com/twoja_nazwa_uzytkownika/WARSAWJS_REPO_NAME
    git push origin master -u
    ```

5. Jeśli zostaniesz poproszony o login i hasło podaj swoje dane z GitHub

<script>
(function() {
    const pathname = window.location.pathname.split("/");
    const projectName = "warsawjs-workshop-" + pathname[pathname.length - 1].split(".")[0];
    document.body.innerHTML = document.body.innerHTML.replace(/WARSAWJS_REPO_NAME/g, projectName);
    document.title = document.title.replace(/WARSAWJS_REPO_NAME/g, projectName);
})();
</script>
