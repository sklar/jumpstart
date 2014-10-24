/**
 * Main.
 * @author David Sklar <david.sklar@jumpshot.com>
 */

(function ($, window, undefined) {
	'use strict';

	/**
	 * @type {Object}
	 */
	var WF = WF || {};


	WF.features = (function () {
		var vh = $(window).height(),
			className = 'is-animated';


		$('.lst-feature__item').waypoint(
			function () {
				var $this = $(this);

				if (!$this.hasClass(className)) {
					$this.addClass(className);
				}
			},
			{ offset: vh + $(this).height() }
		);
	})();


}(jQuery, window));
