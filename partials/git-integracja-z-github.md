# Git: Integracja z GitHub

> Instrukcja napisana przez GitHub-a:
> <https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/>

1. Wygeneruj klucze za pomocą polecenia w terminalu

    ```bash
    ssh-keygen -t rsa -C "DOWOLNA NAZWA, np. EMAIL"
    ```

    Nie wpisuj dodatkowych haseł. Wystarczy, że na każde pytanie odpowiesz
    naciskając ENTER.

2. Wyświetl zawartość pliku `~/.ssh/id_rsa.pub`

    ```bash
    cat ~/.ssh/id_rsa.pub
    ```

3. Skopiuj zawartość pliku `~/.ssh/id_rsa.pub`

4. Uruchom przeglądarkę i wejdź na stronę: <https://github.com/settings/keys>

    Strona wymaga uwierzytelnionego użytkownika.

5. Kliknij przycisk "New SSH key"

6. Wklej do dużego pola całą zawartość pliku `~/.ssh/id_rsa.pub`

    Nie musisz wpisywać danych do pola "Title" - to pole jest opcjonalne

7. Kliknij przycisk "Add SSH key"

## Sprawdzenie poprawności działania

1. Wejdź na stronę <https://github.com/settings/keys>

2. Spr. czy widzisz swój klucz

3. Uruchom terminal i spr. czy poniższe polecenie wyświetli listę plików

    ```bash
    ls -al ~/.ssh
    ```

    Oczekiwany rezultat:

    ```text
    -rw-------    1 piecioshka  staff  1675 25 lut  2017 id_rsa
    -rw-r--r--    1 piecioshka  staff   387 25 lut  2017 id_rsa.pub
    -rw-r--r--    1 piecioshka  staff  6727  6 lis 00:20 known_hosts
    ```

4. Spr. czy GitHub zapisał Twój klucz, w tym celu uruchom polecenie

    ```bash
    ssh -T git@github.com
    ```

    Oczekiwany rezultat to komunikat:

    ```text
    Hi piecioshka! You've successfully authenticated, but GitHub does not
    provide shell access.
    ```
