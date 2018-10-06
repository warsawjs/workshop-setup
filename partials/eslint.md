# ESLint

Narzędzie pozwala weryfikować napisany kod, aby spełniał wymagania ustaloone
przez zespół developerski bądź trenera.

## Instalacja

Ze względu, że narzędzie znajduje się w npm wystarczy wydać polecenie:

```bash
npm install eslint
```

## Konfiguracja

Istnieje wiele konfiguracji, które zawierają predefiniowane reguły.

Popularne:

* [eslint-config-airbnb](https://www.npmjs.com/package/eslint-config-airbnb)
* [eslint-config-react-app](https://www.npmjs.com/package/eslint-config-react-app)
* [eslint-config-standard](https://www.npmjs.com/package/eslint-config-standard)

Konfiguracje osób z naszej społeczności:

* [eslint-config-piecioshka](https://www.npmjs.com/package/eslint-config-piecioshka)
* [@chimeraprime/eslint-config-chimera-prime](https://www.npmjs.com/package/@chimeraprime/eslint-config-chimera-prime)

### Instalacja wybranej konfiguracji

np.

```bash
npm install eslint-config-NAZWA
```

### Stworzenie pliku z konfiguracją

W głównym katalogu projektu stwórz plik `.eslintrcjs` o zawartości:

```js
module.exports = {
    extends: 'NAZWA'
};
```
