package mx.core;

extern class EmbeddedFont {
	var fontName(default,null) : String;
	var fontStyle(default,null) : String;
	function new(fontName : String, bold : Bool, italic : Bool) : Void;
}
