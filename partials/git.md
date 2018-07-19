# Git

Jeśli nie masz jeszcze zainstalowanego i/lub skonfigurowanego gita użyj jednej
z podanych poniżej instrukcji.

## GitHub Desktop

**Tylko dla Windows i MacOS**

GitHub Desktop jest to klient graficzny do obsługi gita w połączeniu z GitHubem.

1. Ściągnij aplikację z [https://desktop.github.com/](https://desktop.github.com/)
2. Rozpakuj archiwum
3. Uruchom aplikację
4. Naciśnij `Sign into Github.com`
5. Wpisz swoje dane z [github.com](https://github.com)

## Wiersz poleceń

### Instalacja

#### Windows

Zainstaluj gita używając tego instalatora: [https://git-scm.com/download/windows](https://git-scm.com/download/windows)

#### MacOS

Zainstaluj gita używając tego instalatora: [https://git-scm.com/download/mac](https://git-scm.com/download/mac).

#### Linux

W systemie Linux gita możesz zainstalować poprzez komendę:

##### Debian (np. Ubuntu)

```bash
apt-get install git
```

##### Fedora

```bash
yum install git-core
```

### Działa?

Pamiętaj, aby sprawdzić czy git został poprawnie zainstalowany poprzez:

```bash
git --version
# git version 2.17.1
```

### Konfiguracja GitHuba

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