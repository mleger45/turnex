const path = require('path');

 module.exports = {
     entry: './src/app.js',
     output: {
         path: path.resolve(__dirname, '../msn/static/js'),
         filename: 'index.js'
     },
     devServer: {
         disableHostCheck: true
    }
 };
