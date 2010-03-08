package mx.modules;

extern interface IModuleInfo implements flash.events.IEventDispatcher {
	var data : Dynamic;
	var error(default,null) : Bool;
	var factory(default,null) : mx.core.IFlexModuleFactory;
	var loaded(default,null) : Bool;
	var ready(default,null) : Bool;
	var setup(default,null) : Bool;
	var url(default,null) : String;
	function load(?applicationDomain : flash.system.ApplicationDomain, ?securityDomain : flash.system.SecurityDomain, ?bytes : flash.utils.ByteArray) : Void;
	function publish(factory : mx.core.IFlexModuleFactory) : Void;
	function release() : Void;
	function unload() : Void;
}
