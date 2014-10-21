##
# Concatenate files.
# @see https://www.npmjs.org/package/grunt-contrib-clean
#

module.exports = (grunt) ->

	options:
		banner: '<%= banner %>'
		separator: '\n\n\n'

	production:
		files: [
			src: [
				'<%= path.vendor %>/normalize/normalize.css'
				'<%= path.build %>/assets/css/main.css'
			]
			dest: '<%= path.build %>/assets/css/main.css'
			nonull: true
		]
