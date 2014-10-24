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

		'uglify'

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

	scripts: [
		'uglify'
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
