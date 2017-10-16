

### note :

Attempting to import e.g. `neon-core.css` through Webpack yields the error

```
ERROR in ./src/static/styles/neon-core.css
Module parse failed: /home/s/ws/zvi_haifa/elm_template/app_one/src/static/styles/neon-core.css Unexpected token (1:0)
You may need an appropriate loader to handle this file type.
| .form-control:focus {
|   border-color: #cbd0d9;
|   outline: 0;
 @ ./src/static/index.js 3:0-35
 @ multi webpack-dev-server/client?http://localhost:8080 ./src/static/index.js

```


There may or may not be a Webpack loader that can handle it.  On the other hand, I am not aware of the advantages in importing CSS files through Webpack rather than directly via the `index.html`, which will be the pattern I employ for these template files.
