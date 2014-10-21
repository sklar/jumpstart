##
# Run shell commands.
# @see https://npmjs.org/package/grunt-shell
#

module.exports = (grunt) ->

	options:
		failOnError: true
		stderr: true
		stdout: true

	bower:
		command: 'bower install --allow-root'

	npm:
		command: 'npm install'
