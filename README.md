# Reactpx

Tutorial for using React with Phoenix.  To find where we modified the configuration files, look for the "ADD" comments in the files listed under "Config modified" below.

## Config modified
- [brunch-config.js](/brunch-config.js)
- [app.js](web/static/js/app.js)

## Here's what we configured

#### [brunch-config.js](/brunch-config.js)

Only added the `presets:` array in the following block:
```javascript
plugins: {
  babel: {
    presets: ["es2015", "react"],
    // Do not use ES6 compiler in vendor code
    ignore: [/web\/static\/vendor/]
  }
},
```
