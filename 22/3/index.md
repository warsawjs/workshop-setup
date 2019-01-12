# Grupa nr. 3: Jak przygotować się do warsztatów?

## Zadania ogólne (prawdopodobnie pierwsze 4 masz już zrobione)

1. [Edytor tekstu](/workshop-setup/partials/edytor-tekstu.html)
2. [Przeglądarka](/workshop-setup/partials/przegladarka.html)
3. [Node.js + npm](/workshop-setup/partials/node+npm.html)
4. [Git](/workshop-setup/partials/git.html)
5. [Stworzony projekt](/workshop-setup/partials/stworz-projekt.html)
6. [Stworzony projekt opublikowany na GitHub](/workshop-setup/partials/opublikuj-projekt-na-github.html)

## Zadania szczegółowe (dla naszej konfiguracji)

1. Skonfigurować [Jest](https://jestjs.io/) w projekcie
2. Skonfigurować formatowanie kodu w edytorze
3. Skonfigurować ESLint
4. Wypchnąć zsetupowany projekt na GitHub

*Uwaga nr 1*: Podczas setup-owania własnego projektu można "posiłkować się"
[projektem trenera](https://github.com/tuhaj/warsawjs-workshop-22-converter).

*Uwaga nr 2*: kroki 3 oraz 4 są opcjonalne, aczkolwiek bardzo polecane

## Konfiguracja Jest

Instalujemy `jest` oraz biblioteki powiązane

```bash
cd warsawjs-workshop-22-converter
npm install jest babel-jest babel-preset-env regenerator-runtime
```

Tworzymy plik `.babelrc`, w którym piszemy

```json
{
  "presets": ["env"]
}
```

Tworzymy katalog `src` a w nim dwa pliki - `index.js` a także `index.test.js`.
    `index.js` zostawiamy na razie pusty, a w `index.test.js` piszemy

```javascript
import './index';

test('Jest should work', () => {
});
```

W pliku `package.json` modyfikujemy/dodajemy w sekcji `scripts` polecenia
    `test` oraz `test:watch`:

```json
{
  "scripts": {
    "test": "jest",
    "test:watch": "jest --watchAll"
  }
}
```

Testujemy setup:

Jeśli wszystko działa poprawnie, to po wykonaniu w terminalu następującego
    polecenia

```bash
npm test
```

powinniście zobaczyć następujące napisy

```text
 PASS  src/index.test.js (5.149s)
  √ Jest should work (15ms)

Test Suites: 1 passed, 1 total
Tests:       1 passed, 1 total
Snapshots:   0 total
Time:        8.294s
Ran all test suites.
```

## Konfiguracja formatowania kodu w edytorze

Tworzymy plik `.editorconfig` w którym wpisujemy

```text
root = true

[*]
end_of_line = lf
insert_final_newline = false

[*.{babelrc,js,jsx,html,css,sass}]
charset = utf-8
indent_style = space
indent_size = 2
trim_trailing_whitespace = true
```

## Konfiguracja ESLint

Instalujemy pakiet `eslint`

```bash
npm install eslint
```

tworzymy plik konfiguracyjny `.eslintrc.json` w którym wpisujemy

```json
{
    "env": {
        "browser": true,
        "es6": true,
        "node": true,
        "jest": true
    },
    "extends": "eslint:recommended",
    "parserOptions": {
        "ecmaVersion": 2018,
        "sourceType": "module"
    },
    "rules": {
        "indent": [
            "error",
            2
        ],
        "linebreak-style": [
            "error",
            "unix"
        ],
        "quotes": [
            "error",
            "single"
        ],
        "semi": [
            "error",
            "always"
        ]
    }
}
```

## Wypychanie zsetupowanego projektu na GitHub

Tworzymy plik `.gitignore`, w którym wpisujemy

```text
node_modules
npm-debug.log
*~
```

Commit + push na GitHub

```bash
git add .
git commit -m "Setup project"
git push origin HEAD:master
```
