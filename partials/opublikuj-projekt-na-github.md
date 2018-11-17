# Opublikuj projekt na GitHub

## GitHub Desktop

1. Naciśnij `Add a local repository`
2. Jako `Local Path` wpisz lokalizację folderu z projektem
3. Naciśnij `create a repository`
4. Naciśnij `Create Repository`
5. Naciśnij `Publish repository`
6. Naciśnij `GitHub.com`
7. Upewnij się, że `Keep the code private` jest **odznaczone**
8. Naciśnij `Publish repository`
9. Twoje repozytorium jest dostępne na `https://github.com/twoja_nazwa_uzytkownika/WARSAWJS_REPO_NAME`

## Wiersz poleceń

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
