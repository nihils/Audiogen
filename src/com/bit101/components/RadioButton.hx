package com.bit101.components;

extern class RadioButton extends Component {
	var groupName : String;
	var label : String;
	var selected : Bool;
	function new(?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float, ?label : String, ?checked : Bool, ?defaultHandler : Dynamic) : Void;
	private function onClick(event : flash.events.MouseEvent) : Void;
}
