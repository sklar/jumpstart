module.exports = (grunt) ->

	build: [
		'shell:npm'
		'clean'
		'shell:bower'
		'copy'

		'imagemin'
		'sass'
		'autoprefixer'
		'concat'
		'cssmin'
		'dataUri'

		'assemble'
	]

	default: [
		'watch'
	]

	fonts: [
		'webfont'
		'copy'
	]

	images: [
		'imagemin'
	]

	sheets: [
		'sass'
		'autoprefixer'
		'concat'
		'cssmin'
		'dataUri'
	]

	templates: [
		'assemble'
	]
