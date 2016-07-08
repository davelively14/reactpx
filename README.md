# Reactpx

Tutorial for using React with Phoenix.  To find where we modified the configuration files, look for the "ADD" comments in the files listed under "Config modified" below.

## Config modified
- [brunch-config.js](/brunch-config.js)
- [app.js](/web/static/js/app.js)

## Here's what we configured

#### [brunch-config.js](/brunch-config.js)

Only added the `presets:` array in the following block:
```javascript
plugins: {
  babel: {
>   presets: ["es2015", "react"],
    ignore: [/web\/static\/vendor/]
  }
},
```

Only added the `whitelist:` array in the following block:
```javascript
npm: {
  enabled: true,
> whitelist: ["phoenix", "phoenix_html", "react", "react-dom"]
}
```

#### [app.js](/web/static/js/app.js)

Added the `import` calls at the end of the file:
```javascript
import React from "react"
import ReactDOM from "react-dom"
```

## Here's what we installed

#### npm

```
$ npm install --save react react-dom babel-preset-react
```

#### Confirmed installation

```
$ brunch build
```
