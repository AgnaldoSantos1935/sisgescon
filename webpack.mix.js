const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

/*const mix .js('resources/js/app.js', 'public/js')
 .vue()
 .sass('resources/sass/app.scss', 'public/css')
 ('node_modules/bootstrap/dist/css/bootstrap.s','public/css');

.scripts('node_modules/jquery/dist/jquery.js','public/site/jquery.js')
.scripts('node_modules/bootstrap/dist/js/bootstrap.bundle.js','public/site/bootstrap.js'); */
 mix.js('resources/js/app.js', 'public/js')
 .sass('resources/sass/app.scss', 'public/css');
