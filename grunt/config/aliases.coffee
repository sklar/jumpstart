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
		'cmq'
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
		'cmq'
		'cssmin'
		'dataUri'
	]

	templates: [
		'assemble'
	]
