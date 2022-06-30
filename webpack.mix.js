let mix = require('laravel-mix');

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

 mix.styles([
    'resources/css/normalize.css', 'resources/css/app.css','resources/css/style.css'
    
],'public/css/app.css')
     
.styles(['node_modules/bootstrap/dist/css/bootstrap.css'
,'node_modules/adminlte/dist/css/AdminLTE.css','node_modules/font-awesome/css/font-awesome.css'  
],'public/css/bootstrap.css')
        .scripts([
                'node_modules/jquery/dist/jquery.min.js',
                'node_modules/bootstrap/dist/js/bootstrap.js',
                'node_modules/chart.js/dist/chart.js',
                'resources/js/app.js',
                ],'public/js/app.js')
        /* .scripts([
                    'node_modules/jquery/dist/jquery.js',
                    'node_modules/chart.js/dist/chart.js',
                    ],'public/js/jquery.js') */

.version();

 
