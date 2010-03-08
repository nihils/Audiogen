package mx.modules;

extern class ModuleManager {
	static function getAssociatedFactory(object : Dynamic) : mx.core.IFlexModuleFactory;
	static function getModule(url : String) : IModuleInfo;
}
