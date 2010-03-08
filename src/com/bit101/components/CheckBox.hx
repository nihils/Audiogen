package com.bit101.components;

extern class CheckBox extends Component {
	var label : String;
	var selected : Bool;
	function new(?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float, ?label : String, ?defaultHandler : Dynamic) : Void;
	private function onClick(event : flash.events.MouseEvent) : Void;
}
