package mx.core;

extern class Singleton {
	static function getClass(interfaceName : String) : Class<Dynamic>;
	static function getInstance(interfaceName : String) : Dynamic;
	static function registerClass(interfaceName : String, clazz : Class<Dynamic>) : Void;
}
