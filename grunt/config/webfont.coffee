##
# Generate custom icon webfonts from SVG files.
# @see https://github.com/sapegin/grunt-webfont
#

module.exports = (grunt) ->

	icon:
		options:
			font: 'icon'
			hashes: false
			stylesheet: 'scss'
			template: 'grunt/webfont/templates/webfont.css'
			types: [
				# 'woff2',
				'woff'
			]
		src: '<%= path.source %>/assets/gfx/svg/*.svg'
		dest: '<%= path.source %>/assets/font'
		destCss: '<%= path.source %>/assets/sass/components'
