# Git: Konfiguracja globalna

Warto przeczytać:

* <https://piecioshka.pl/blog/2018/12/11/git-jak-usunac-przedostatnia-rewizje.html>
* <https://piecioshka.pl/blog/2018/11/20/dlaczego-nie-dodajemy-do-gita-katalogu-node-modules.html>
* <https://piecioshka.pl/blog/2017/02/06/globalna-konfiguracja-gita.html>

1. Globalny plik `.gitconfig`

    + Tworzymy plik `.gitignore` w katalogu użytkownika

        - macOS / linux

            ```bash
            touch ~/.gitconfig
            ```

        - Windows

            `C:/Users/%USER%/.gitconfig`

    + Następnie uruchamiamy:

        ```bash
        git config --global core.excludesfile ~/.gitignore
        git config --global core.ignorecase false
        ```

2. Globalny plik `.gitignore`

    + Wykluczamy katalogi, które zawierają konfigurację edytorów oraz pliku systemowe:

        - macOS / linux

            ```bash
            touch ~/.gitignore
            ```

        - Windows

            `C:/Users/%USER%/.gitignore`

    + Zawartość pliku `~/.gitignore`:

        ```text
        # Windows
        $RECYCLE.BIN/
        Desktop.ini
        *.db
        *.autosave

        # Linux
        *~
        .directory

        # macOS
        .Spotlight-V100/
        .Trashes/
        .DS_Store
        ._*

        # Edytory
        .idea/
        .settings/
        .project
        nbproject/
        *.swp
        .vscode
        ```
