##
# Copy files and folders.
# @see https://www.npmjs.org/package/grunt-contrib-copy
#

module.exports = (grunt) ->

	fonts:
		expand: true
		flatten: true
		cwd: '<%= path.source %>/assets/font'
		src: ['**/*.{eot,svg,ttf,woff}']
		dest: '<%= path.build %>/assets/font'

	scripts:
		expand: true
		cwd: '<%= path.source %>/assets/js'
		src: ['*.js', '!*.min.js']
		dest: '<%= path.build %>/assets/js'
