package mx.resources;

extern class ResourceBundle implements IResourceBundle {
	var bundleName(default,null) : String;
	var content(default,null) : Dynamic;
	var locale(default,null) : String;
	function new(?locale : String, ?bundleName : String) : Void;
	function getBoolean(key : String, ?defaultValue : Bool) : Bool;
	function getNumber(key : String) : Float;
	function getObject(key : String) : Dynamic;
	function getString(key : String) : String;
	function getStringArray(key : String) : Array<Dynamic>;
	private function getContent() : Dynamic;
	static function getResourceBundle(baseName : String, ?currentDomain : flash.system.ApplicationDomain) : ResourceBundle;
}
