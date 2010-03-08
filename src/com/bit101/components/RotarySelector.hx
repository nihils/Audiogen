package com.bit101.components;

extern class RotarySelector extends Component {
	var choice : UInt;
	var labelMode : String;
	var numChoices : UInt;
	function new(?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float, ?label : String, ?defaultHandler : Dynamic) : Void;
	private function decrement() : Void;
	private function drawKnob(radius : Float) : Void;
	private function increment() : Void;
	private function onClick(event : flash.events.MouseEvent) : Void;
	private function onLabelClick(event : flash.events.Event) : Void;
	private function resetLabels() : Void;
	static var ALPHABETIC : String;
	static var NONE : String;
	static var NUMERIC : String;
	static var ROMAN : String;
}
