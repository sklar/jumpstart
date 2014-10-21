##
# Minify images.
# @see https://www.npmjs.org/package/grunt-contrib-imagemin
#

module.exports = (grunt) ->

	production:
		files: [
			expand: true
			cwd: '<%= path.source %>/assets/gfx'
			src: ['*.{gif,jpg,png}']
			dest: '<%= path.build %>/assets/gfx'
		]
