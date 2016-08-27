var path  = require('path');
var glob  = require('glob');
var files = glob.sync('./javascripts/**/main.js')
var entry_hash = {};
for (var i = 0; i < files.length; i++) {
  var entry = files[i];
  entry_hash[path.parse(entry).dir] = entry;
}

module.exports = {
  entry: entry_hash,
  output: {
    path: '../app/assets',
    filename: '[name].js'
  },
  module: {
    loaders: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel?presets[]=react,presets[]=es2015,presets[]=stage-2'
      }
    ]
  }
}
