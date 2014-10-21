##
# Run tasks whenever watched files are changed.
# @see https://npmjs.org/package/grunt-contrib-watch
#

module.exports = (grunt) ->

	options:
		livereload: true

	sheets:
		files: [
			'<%= path.source %>/assets/sass/**/*.scss'
		]
		tasks: [
			'sass'
			'newer:autoprefixer'
			'concat'
			'newer:cssmin'
			# 'dataUri'
		]

	templates:
		files: [
			'<%= path.source %>/**/*.hbs'
		]
		tasks: [
			'newer:assemble'
		]
