package mx.utils;

extern class StringUtil {
	static function isWhitespace(character : String) : Bool;
	static function substitute(str : String, ?p1 : Dynamic, ?p2 : Dynamic, ?p3 : Dynamic, ?p4 : Dynamic, ?p5 : Dynamic ) : String;
	static function trim(str : String) : String;
	static function trimArrayElements(value : String, delimiter : String) : String;
}
