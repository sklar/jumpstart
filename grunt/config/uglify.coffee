##
# Minify and concatenate scripts.
# @see https://www.npmjs.org/package/grunt-contrib-uglify
#

module.exports = (grunt) ->

	options:
		banner: '<%= banner %>'
		report: 'gzip'

	production:
		files: [
			src: [
				'<%= path.vendor %>/jquery-waypoints/waypoints.js'
				'<%= path.source %>/assets/js/main.js'
			]
			dest: '<%= path.build %>/assets/js/main.min.js'
		]
