/// @description scrAppendZeros(num, numDigits)
/// @param The number to print
/// @param The minimum number of total digits to print

var num = argument0;
var numDigits = argument1;
var returnString = string(num);

var numZeros = max(0, numDigits - string_length(string(num)));

for (var i = 0; i < numZeros; ++i) {
  returnString = "0" + returnString; 
}

return returnString;