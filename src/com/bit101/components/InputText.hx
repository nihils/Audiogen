package com.bit101.components;

extern class InputText extends Component {
	var maxChars : Int;
	var password : Bool;
	var restrict : String;
	var text : String;
	function new(?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float, ?text : String, ?defaultHandler : Dynamic) : Void;
	private function onChange(event : flash.events.Event) : Void;
}
