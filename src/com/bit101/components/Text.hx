package com.bit101.components;

extern class Text extends Component {
	var editable : Bool;
	var text : String;
	function new(?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float, ?text : String) : Void;
	private function onChange(event : flash.events.Event) : Void;
}
