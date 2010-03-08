package com.bit101.components;

extern class PushButton extends Component {
	var label : String;
	var selected : Bool;
	var toggle : Bool;
	function new(?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float, ?label : String, ?defaultHandler : Dynamic) : Void;
	private function onMouseDown(event : flash.events.MouseEvent) : Void;
	private function onMouseOut(event : flash.events.MouseEvent) : Void;
	private function onMouseOver(event : flash.events.MouseEvent) : Void;
	private function onMouseUp(event : flash.events.MouseEvent) : Void;
}
