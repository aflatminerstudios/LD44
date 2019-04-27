/// afm_scrCurveCubicInOut(startValue, endValue, percent)
// Where percent is 0.0-1.0 (in decimal) of the 
// time period to travel from start to end
// scrCurveLinear(10, 20, 0.5) -> 15

var startValue = argument0;
var endValue = argument1;
var percent = argument2;

// Formula from http://www.gizma.com/easing/#cub3
/*
  Math.easeInOutCubic = function (t, b, c, d) {
    	t /= d/2;
    	if (t < 1) return c/2*t*t*t + b;
    	t -= 2;
    	return c/2*(t*t*t + 2) + b;
  };
*/
var t = percent;
var d = 1.0;
var b = startValue;
var c = endValue - startValue;
t /= d/2;
if (t < 1) return c/2*t*t*t + b;
t -= 2;
return c/2*(t*t*t + 2) + b;