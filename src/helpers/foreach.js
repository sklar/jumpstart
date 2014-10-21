/**
 * Handlebars collection helper.
 * @see http://goo.gl/G93NwL
 */

(function () {
	module.exports.register = function (Handlebars, options) {
		Handlebars.registerHelper('forEach', function (arr, options) {
			if (options.inverse && !arr.length) {
				return options.inverse(this);
			}
			return arr.map(function (item, index) {
				item.index = index;
				item.iteration = index + 1;
				item.first = index === 0;
				item.last  = index === arr.length - 1;
				return options.fn(item);
			}).join('');
		});
	};
})();
