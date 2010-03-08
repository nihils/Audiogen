package com.bit101.components;

extern class HBox extends Component {
	var spacing : Float;
	function new(?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float) : Void;
	private function onResize(event : flash.events.Event) : Void;
}
