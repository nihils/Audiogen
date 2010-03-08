package mx.events;

extern class ResourceEvent extends flash.events.ProgressEvent {
	var errorText : String;
	function new(type : String, ?bubbles : Bool, ?cancelable : Bool, ?bytesLoaded : UInt, ?bytesTotal : UInt, ?errorText : String) : Void;
	static var COMPLETE : String;
	static var ERROR : String;
	static var PROGRESS : String;
}
