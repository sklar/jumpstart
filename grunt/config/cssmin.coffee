##
# Minify stylesheets.
# @see https://www.npmjs.org/package/grunt-contrib-cssmin
#

module.exports = (grunt) ->

	options:
		banner: '<%= banner %>'
		keepSpecialComments: 0
		report: false

	production:
		options:
			report: 'gzip'
		files: [
			expand: true
			cwd: '<%= path.build %>/assets/css'
			src: ['*.css', '!*.min.css']
			dest: '<%= path.build %>/assets/css'
			ext: '.min.css'
		]
