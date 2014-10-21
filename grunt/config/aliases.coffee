module.exports = (grunt) ->

	build: [
		'shell:npm'
		'clean'
		'shell:bower'
		# 'copy'

		# 'imagemin'
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
