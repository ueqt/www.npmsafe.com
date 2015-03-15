# www.npmsafe.com
www.npmsafe.com is the main site for npmsafe.  


## Development Setup
1. Install Harp `sudo npm install -g harp`
2. cd into root directory `www.npmsafe.com/`
3. run `harp server`
4. Open this url in the browser: [http://localhost:9000/](http://localhost:9000/)


## Technology Used
- Angular 1.x: The production ready version of Angular
- Angular Material: An implementation of Material Design in Angular.js
- Harp: The static web server with built-in preprocessing.
- Sass: A professional grade CSS extension language
- Normalize: A modern, HTML5-ready alternative to CSS resets
- Grids: A highly customizable CSS Grid Framework built with Sass
- Prettify: A JS module and CSS for syntax highlighting of source code snippets.
- Icomoon: Custom built icon fonts

## Github.io
```bash
harp compile
```

Copy www output to github.io repository

## Production
```bash
NODE_ENV=production sudo harp server --port 80
```

## License
Powered by Ueqt ©2015. Code licensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0). Documentation licensed under [CC BY 3.0](http://creativecommons.org/licenses/by/3.0/).