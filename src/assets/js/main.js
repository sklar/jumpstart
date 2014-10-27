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

	/**
	 *
	 */
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
			{
				offset: function () {
					return vh + $(this).height();
				}
			}
		);
	})();

	/**
	 *
	 */
	WF.head = (function () {
		var target = document.querySelector('.page__head'),
			targetBounding = target.getBoundingClientRect(),
			targetPositionTopLimit = targetBounding.height + 50,
			targetPlaceholder = document.createElement('div'),
			activeClassName = 'is-sticky',
			state = false,
			isTargetPlaceholderSet = false,
			isTouch = ('ontouchstart' in window) ? true : false;

		targetPlaceholder.style.width = targetBounding.width + 'px';
		targetPlaceholder.style.height = targetBounding.height + 'px';

		/**
		 * Add `scroll` event listener.
		 */
		window.addEventListener('scroll', function() {
			if (!state || isTouch) {
				state = true;
				return window.setTimeout(function () {
					state = false;
					toggle();
				}, 0);
			}
		});

		/**
		 * Toggles element `sticky` className and placeholder.
		 */
		function toggle() {
			var pageYOffset = window.pageYOffset,
				targetPositionTop = targetBounding.top + targetPositionTopLimit;

			if (pageYOffset >= targetPositionTop && !isTargetPlaceholderSet) {
				target.classList.add(activeClassName);
				target.parentNode.insertBefore(targetPlaceholder, target);
				isTargetPlaceholderSet = true;
			} else if (pageYOffset < targetPositionTop && isTargetPlaceholderSet) {
				target.classList.remove(activeClassName);
				target.parentNode.removeChild(targetPlaceholder);
				isTargetPlaceholderSet = false;
			}
		}

	})();


}(jQuery, window));
