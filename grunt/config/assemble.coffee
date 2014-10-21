##
# Generate Styleguide.
# @see https://npmjs.org/package/assemble
#

module.exports = (grunt) ->

	production:
		options:
			assets: '<%= path.build %>/assets'
			data: '<%= path.source %>/data/*.{json,yml}'
			helpers: '<%= path.source %>/helpers/*.js'
			layout: 'default.hbs'
			layoutdir: '<%= path.source %>/layouts'
			partials: '<%= path.source %>/partials/**/*.{hbs,html}'
		expand: true
		cwd: '<%= path.source %>'
		src: ['*.hbs']
		dest: '<%= path.build %>'
