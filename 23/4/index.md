# Grupa nr 4: Jak się przygotować do warsztatów?

1. Zapoznać się z
    [domyślnym config-iem](https://warsawjs.github.io/workshop-setup/21/)
    i wykonać następujące punkty stamtąd:
    1. [Edytor tekstu](https://warsawjs.github.io/workshop-setup/partials/edytor-tekstu.html)
    2. [Przeglądarka](https://warsawjs.github.io/workshop-setup/partials/przegladarka.html)
    3. [Node.js + NPM](https://warsawjs.github.io/workshop-setup/partials/node+npm.html)
    4. [Git](https://warsawjs.github.io/workshop-setup/partials/git-instalacja.html)
    5. [Projekt opublikowany na GitHub](https://warsawjs.github.io/workshop-setup/partials/opublikuj-projekt-na-github.html)
2. Zainstalować niezbędne biblioteki / sterowniki
    1. [TestCafe](https://github.com/DevExpress/testcafe)
    2. [Puppeteer](https://github.com/GoogleChrome/puppeteer)
    3. [Nightwathch.js](http://nightwatchjs.org/)
        1. Geckodriver - jeśli zamierzacie testować na Firefox
        2. Chromedriver - jeśli zamierzacie testować na Chrome
    4. [Cucumber.js](https://github.com/cucumber/cucumber-js)
3. Utworzyć strukturę katalogów oraz komend npm
4. Skonfigurować formatowanie kodu w edytorze
5. Skonfigurować ESLint
6. Wypchnąć zsetupowany projekt na GitHub
7. Założyć konto na [Heroku](https://signup.heroku.com/)

*Uwaga nr 1*: Podczas setup-owania własnego projektu można "posiłkować się"
[projektem trenera](https://github.com/mykulyak/warsawjs-workshop-23-project).

*Uwaga nr 2*: kroki 4, 5 oraz 7 są opcjonalne, aczkolwiek bardzo polecam je wykonać.

## Instalowanie bibliotek i sterowników

```bash
cd TWOJ_PROJEKT
npm install testcafe
npm install puppeteer
npm install nightwatch
npm install geckodriver
npm install chromedriver
npm install cucumber
```

*Uwaga nr 3*: wszystkie pakiety wymagają ok 450 Mb miejsca na dysku.

## Utworzenie struktury katalogów oraz komend

W pliku `package.json` w sekcji `scripts` wpisujemy:

```json
"scripts": {
  "test": "npm run test:puppeteer; npm run test:testcafe; npm run test:nightwatch",
  "test:puppeteer": "node puppeteer/index.js",
  "test:testcafe": "npx testcafe chrome testcafe/index.js -s .",
  "test:nightwatch": "node nightwatch/runner.js -c nightwatch/nightwatch.json"
}
```

### TestCafe

Tworzymy katalog `testcafe` w którym tworzymy plik `index.js` o następującej treści:

```js
import { Selector } from 'testcafe';

fixture `Getting Started`
  .page `https://www.google.com`;

test('My first test', async t => {
  await t
    .typeText('[name=q]', 'TestCafe')
    .click('[name=btnK]')
    .takeScreenshot('google-testcafe.png');
});
```

### Puppeteer

Tworzymy katalog `puppeteer` w którym tworzymy następujące pliki:

```js
const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto('https://www.google.com');
  await page.screenshot({ path: 'google-puppeteer.png' });

  await browser.close();
})();
```

### Nightwatch

Tworzymy katalog `nightwatch` w którym tworzymy następujące pliki:

`runner.js`

```js
require('nightwatch/bin/runner.js');
```

`setup.js`

```js
const chromedriver = require('chromedriver');

module.exports = {
  before : function(done) {
    chromedriver.start();
    done();
  },

  after : function(done) {
    chromedriver.stop();
    done();
  }
};
```

`nightwatch.json`

```json
{
  "src_folders": ["nightwatch/test"],
  "output_folder": "reports",
  "custom_commands_path": "",
  "custom_assertions_path": "",
  "page_objects_path": "nightwatch/test",
  "globals_path": "nightwatch/setup.js",

  "selenium": {
    "start_process": false
  },
  "test_settings" : {
    "default" : {
      "selenium_port"  : 9515,
      "selenium_host"  : "localhost",
      "default_path_prefix" : "",

      "desiredCapabilities": {
        "browserName": "chrome",
        "chromeOptions" : {
          "args" : ["--no-sandbox"]
        },
        "acceptSslCerts": true
      }
    }
  }
}
```

katalog `test` z plikiem `index.js`

```js
module.exports = {
  'First test' : function (browser) {
    browser
      .url('https://www.google.com')
      .waitForElementVisible('input[name=q]', 3000)
      .saveScreenshot('google-nightwatch.png')
      .end();
  }
};
```

### Weryfikacja poprawności instalacji

Wykonanie polecenia

```bash
npm test
```

nie powinno powodować komunikatów błędów w konsoli, a po jego wykonaniu
w katalogu projektu powinny pojawić się 3 pliki - `google-testcafe.png`,
`google-nightwatch.png`, `google-puppetee.png` oraz katalog `reports`.

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

Komitujemy zmiany i puszujemy (wypychamy) na GitHub

```bash
git add .
git commit -m "Setup project"
git push origin HEAD:master
```
