# Grupa nr.4: Jak się przygotować do warsztatów?

1. zapoznać się z [domyślnym config-iem](https://warsawjs.github.io/workshop-setup/21/)
i wykonać polecenia stamtąd
2. skonfigurować [Jest](https://jestjs.io/) w projekcie
3. skonfigurować formatowanie kodu w edytorze
4. skonfigurować Eslint
3. wypchnąć zsetupowany projekt na GitHub

*Uwaga nr 1*: Podczas setup-owania własnego projektu można "posiłkować się" [projektem trenera](https://github.com/mykulyak/warsawjs-workshop-22-project).

*Uwaga nr 2*: kroki 3 oraz 4 są opcjonalne, aczkolwiek bardzo polecane

## Konfiguracja Jest

1. Instalujemy `jest` oraz biblioteki powiązane:

```
> cd TWOJ_PROJEKT
> npm install jest babel-jest babel-preset-env regenerator-runtime 
```

2. Tworzymy plik `.babelrc`, w którym piszemy

```
{
  "presets": ["env"]
}
```

3. Tworzymy katalog `src` a w nim dwa pliki - `index.js` a także `index.test.js`. `index.js`
zostawiamy na razie pusty, a w `index.test.js` piszemy 

```
import './index';

test('Jest should work', () => {
});
```

4. W pliku `package.json` modyfikujemy/dodajemy w sekcji `scripts` polecenia `test` oraz `test:watch`:

```
{
  ...
  "scripts": {
    "test": "jest",
    "test:watch": "jest --watchAll"
  }
  ...
}
```

5. Testujemy setup:

Jeśli wszystko działa poprawnie, to po wykonaniu w terminalu następującego polecenia

```
> npm test
```

powinniście zobaczyć następujące napisy

```
 PASS  src/index.test.js (5.149s)
  √ Jest should work (15ms)

Test Suites: 1 passed, 1 total
Tests:       1 passed, 1 total
Snapshots:   0 total
Time:        8.294s
Ran all test suites.
```


## Konfiguracja formatowania kodu w edytorze

1. tworzymy plik `.editorconfig` w którym wpisujemy

```
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

1. Instalujemy pakiet `eslint`

```
> npm install eslint
```

2. tworzymy plik konfiguracyjny `.eslintrc.json` w którym wpisujemy

```
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

1. Tworzymy plik `.gitignore`, w którym wpisujemy

```
node_modules
npm-debug.log
*~
```

2. Komitujemy zmiany i puszujemy (wypychamy) na GitHub

```
> git add .
> git commit -m "Setup project"
> git push origin HEAD:master
```
