# create-react-app

1. Otwórz wiersz poleceń
2. Przejdź do folderu w którym stworzysz folder z projektem
    - `cd nazwa_folderu` – komenda do zmiany folderu
    - `ls` – wypisanie zawartości folderu (macOS/linux)
    - `dir` – wypisanie zawartości folderu (Windows)
3. Wykonaj

    ```bash
    npx create-react-app WARSAWJS_REPO_NAME
    ```

4. Po wykonaniu się polecenia naszym oczom powinno ukazać się coś podobnego do

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
        Removes this tool and copies build dependencies, configuration files
        and scripts into the app directory. If you do this, you can’t go back!

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

    ![](/assets/cra-start.png)

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
