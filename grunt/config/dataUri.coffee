##
# Encode data-uris.
# @see https://www.npmjs.org/package/grunt-datauri
#

module.exports = (grunt) ->

	production:
		options:
			target: [
				'<%= path.build %>/assets/gfx/*.{gif,png}'
			]
			# maxBytes: 2048
		src: [
			'<%= path.build %>/assets/css/*.min.css'
		]
		dest: '<%= path.build %>/assets/css'
