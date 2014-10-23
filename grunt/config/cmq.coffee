##
# Combine matching media queries.
# @see https://www.npmjs.org/package/grunt-combine-media-queries
#

module.exports = (grunt) ->

	options:
		log: true

	production:
		files: [
			expand: true
			cwd: '<%= path.build %>/assets/css'
			src: ['*.css', '!*.min.css']
			dest: '<%= path.build %>/assets/css'
		]
