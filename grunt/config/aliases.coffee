module.exports = (grunt) ->

	build: [
		'shell:npm'
		'clean'
		'shell:bower'
		# 'copy'

		'images'
		'sass'
		'autoprefixer'
		'concat'
		'cssmin'
		# 'dataUri'

		'assemble'
	]

	default: [
		'watch'
	]

	images: [
		'imagemin'
	]

	sheets: [
		'sass'
		'autoprefixer'
		'concat'
		'cssmin'
		# 'dataUri'
	]

	templates: [
		'assemble'
	]
