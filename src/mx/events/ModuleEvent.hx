package mx.events;

extern class ModuleEvent extends flash.events.ProgressEvent {
	var errorText : String;
	var module(default,null) : mx.modules.IModuleInfo;
	function new(type : String, ?bubbles : Bool, ?cancelable : Bool, ?bytesLoaded : UInt, ?bytesTotal : UInt, ?errorText : String, ?module : mx.modules.IModuleInfo) : Void;
	static var ERROR : String;
	static var PROGRESS : String;
	static var READY : String;
	static var SETUP : String;
	static var UNLOAD : String;
}
