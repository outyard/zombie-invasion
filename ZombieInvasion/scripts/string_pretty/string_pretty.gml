///@description like string() but doesn't mess up arrays quite as bad
///@param value

if (is_array(argument0)) {
	var _a = argument0;
	var _len = array_length_1d(_a);
	var _text = "{";
	for (var i=0;i<_len;i++) {
		_text += string_pretty(_a[i]);
		if (i!= _len-1) {
			_text += ", ";	
		}
	}
	return _text + "}";
	
} else {
	return string(argument0);	
}