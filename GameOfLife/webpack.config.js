const HtmlWebpackPlugin = require('html-webpack-plugin');

const config = {
  entry: './src/main.jsx',
  output: {
    path: './dist',
    filename: 'bundle.js',
  },
  module: {
    rules: [
      {
        test: /.jsx?$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        options: {
          presets: ['env', 'react'],
        },
      },
    ],
  },
  plugins: [
    new HtmlWebpackPlugin({ template: './template/index.html' }),
  ],
};

module.exports = config;
