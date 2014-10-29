/**
 * Main.
 * @author David Sklar <david.sklar@jumpshot.com>
 */

(function (window, undefined) {

	'use strict';

	/**
	 * @type {Object}
	 */
	var WF = WF || {};

	/**
	 *
	 */
	WF.anchor = (function () {
		var view = document.querySelector('html, body'),
			anchor = document.querySelector('[href="#ui-tour"]'),
			target = document.querySelector('main'),
			targetOffsetY = 0,
			viewOffsetY = 0,
			id = 0;

		/**
		 *
		 */
		anchor.addEventListener('click', function (e) {
			viewOffsetY = document.body.scrollTop;
			targetOffsetY = viewOffsetY + target.getBoundingClientRect().top;

			e.preventDefault();

			window.requestAnimationFrame(scroll);
		});

		/**
		 *
		 */
		function scroll() {
			var dy = targetOffsetY - viewOffsetY,
				step = 50;

			id = window.requestAnimationFrame(scroll);

			if (dy < 20) {
				viewOffsetY += 1;
			} else if (dy < 100) {
				viewOffsetY += step / 10;
			} else if (dy < 150) {
				viewOffsetY += step / 5;
			} else {
				viewOffsetY += step;
			}

			if (viewOffsetY <= targetOffsetY) {
				window.scroll(0, viewOffsetY);
			} else {
				window.cancelAnimationFrame(id);
			}
		}

	})();

	/**
	 *
	 */
	WF.features = (function () {
		var target = document.querySelectorAll('.lst-feature__item'),
			targetOffsetY = [],
			className = 'is-animated',
			state = false,
			isTouch = ('ontouchstart' in window) ? true : false;

		// Get target offsets array.
		Array.prototype.forEach.call(target, function (el, i) {
			targetOffsetY.push(
				el.getBoundingClientRect().top +
				window.pageYOffset
			);
		});

		// Run.
		toggle();

		/**
		 * Add `scroll` event listener.
		 */
		window.addEventListener('scroll', function () {
			if (!state || isTouch) {
				state = true;
				return window.setTimeout(function () {
					state = false;
					toggle();
				}, 30);
			}
		});

		/**
		 * Toggles element `animated` className.
		 */
		function toggle() {
			var pageYOffset = window.pageYOffset + window.innerHeight;

			targetOffsetY.forEach(function (y, i) {
				if (pageYOffset >= y) {
					target[i].classList.add(className);
				}
			});
		}
	})();

	/**
	 *
	 */
	WF.head = (function () {
		var target = document.querySelector('.page__head'),
			targetBounding = target.getBoundingClientRect(),
			targetOffsetY = targetBounding.height,
			targetPlaceholder = document.createElement('div'),
			stickyClassName = 'is-sticky',
			state = false,
			isTargetPlaceholderSet = false,
			isTouch = ('ontouchstart' in window) ? true : false;

		// Prepare placeholder.
		targetPlaceholder.style.width = targetBounding.width + 'px';
		targetPlaceholder.style.height = targetBounding.height + 'px';

		/**
		 * Add `scroll` event listener.
		 */
		window.addEventListener('scroll', function () {
			if (!state || isTouch) {
				state = true;
				return window.setTimeout(function () {
					state = false;
					toggle();
				}, 60);
			}
		});

		/**
		 * Toggles element `sticky` className and handles its placeholder.
		 */
		function toggle() {
			var pageYOffset = window.pageYOffset;

			if (pageYOffset >= targetOffsetY && !isTargetPlaceholderSet) {
				target.classList.add(stickyClassName);
				target.parentNode.insertBefore(targetPlaceholder, target);
				isTargetPlaceholderSet = true;
			} else if (pageYOffset < targetOffsetY && isTargetPlaceholderSet) {
				target.classList.remove(stickyClassName);
				target.parentNode.removeChild(targetPlaceholder);
				isTargetPlaceholderSet = false;
			}
		}

	})();

}(window));
