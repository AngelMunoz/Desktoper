const { CleanWebpackPlugin } = require('clean-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const HtmlWebPackPlugin = require("html-webpack-plugin");

module.exports = {
	plugins: [
		new MiniCssExtractPlugin({
			filename: '[name].[hash].css',
			chunkFilename: '[id].[hash].css',
		}),
		new HtmlWebPackPlugin({
			filename: "index.html",
			template: "src/index.html"
		})
	],
	module: {
		rules: [
			{
				test: /\.imba$/,
				use: [
					{
						loader: 'imba/loader',
						options: { sourceMap: true }
					}
				]
			},
			{
				test: /\.(png|jpe?g|gif)$/i,
				use: [{ loader: 'file-loader' }],
			},
			{
				test: /\.html$/,
				use: [
					{
						loader: "html-loader",
						options: { minimize: true }
					}
				]
			},
			{
				test: /\.css$/,
				use: [
					{
						loader: MiniCssExtractPlugin.loader,
						options: {
							hmr: process.env.NODE_ENV === 'development',
						},
					},
					'css-loader'
				],
			},
		],
	},
	devServer: {
		historyApiFallback: true,
	},
	resolve: {
		extensions: [".imba", ".js", ".json", ".css"]
	},
	entry: ["./src/index.imba", "./src/index.css", "./src/index.html"],
	output: { path: __dirname + '/public', filename: '[name].[contenthash].js' },
	mode: 'development'
}