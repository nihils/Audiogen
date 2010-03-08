package com.bit101.components;

extern class Meter extends Component {
	var label : String;
	var maximum : Float;
	var minimum : Float;
	var showValues : Bool;
	var value : Float;
	function new(?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float, ?text : String) : Void;
	private function drawBackground() : Void;
	private function drawDial(startAngle : Float, endAngle : Float) : Void;
	private function drawNeedle() : Void;
	private function drawTicks(startAngle : Float, endAngle : Float) : Void;
	private function onEnterFrame(event : flash.events.Event) : Void;
	private function update() : Void;
}
