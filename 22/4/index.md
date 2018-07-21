# Grupa nr.4: Jak się przygotować do warsztatów?

1. zapoznać się z
    [domyślnym config-iem](https://warsawjs.github.io/workshop-setup/21/)
    i wykonać polecenia stamtąd
2. skonfigurować [Jest](https://jestjs.io/) w projekcie
3. skonfigurować formatowanie kodu w edytorze
4. skonfigurować Eslint
5. wypchnąć zsetupowany projekt na GitHub

*Uwaga nr 1*: Podczas setup-owania własnego projektu można "posiłkować się"
[projektem trenera](https://github.com/mykulyak/warsawjs-workshop-22-project).

*Uwaga nr 2*: kroki 3 oraz 4 są opcjonalne, aczkolwiek bardzo polecane

## Konfiguracja Jest

Instalujemy `jest` oraz biblioteki powiązane

```bash
cd TWOJ_PROJEKT
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

tworzymy plik `.editorconfig` w którym wpisujemy

```text
root = true

[*]
end_of_line = lf
insert_final_newline = false

[*.{babelrc,js,jsx,html,css,sass}]
charset = utf-8
indent_style = space
indent_size = 2
trim_trailing_whitespaces = true
```

## Konfiguracja Eslint

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

Komitujemy zmiany i puszujemy (wypychamy) na GitHub

```bash
git add .
git commit -m "Setup project"
git push origin HEAD:master
```
