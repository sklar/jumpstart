##
# Provide vendor prefixes.
# @see https://www.npmjs.org/package/grunt-autoprefixer
#

module.exports = (grunt) ->

	options:
		# @see https://github.com/ai/autoprefixer
		browsers: [
			'> 1%'
			'last 2 versions'
			'Explorer > 8'
			'Firefox ESR'
			'Opera 12.1'
		]

	production:
		expand: true
		cwd: '<%= path.build %>/assets/css'
		src: [
			'*.css'
			'!*.min.css'
		]
		dest: '<%= path.build %>/assets/css'
