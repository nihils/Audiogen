package com.bit101.components;

extern class Knob extends Component {
	var label : String;
	var labelPrecision : Int;
	var maximum : Float;
	var minimum : Float;
	var mouseRange : Float;
	var showValue : Bool;
	var value : Float;
	function new(?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float, ?label : String, ?defaultHandler : Dynamic) : Void;
	private function correctValue() : Void;
	private function drawKnob() : Void;
	private function formatValueLabel() : Void;
	private function onMouseDown(event : flash.events.MouseEvent) : Void;
	private function onMouseMove(event : flash.events.MouseEvent) : Void;
	private function onMouseUp(event : flash.events.MouseEvent) : Void;
	private function updateKnob() : Void;
}
