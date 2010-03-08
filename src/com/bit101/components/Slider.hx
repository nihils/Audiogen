package com.bit101.components;

extern class Slider extends Component {
	var backClick : Bool;
	var maximum : Float;
	var minimum : Float;
	var tick : Float;
	var value : Float;
	function new(?orientation : String, ?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float, ?defaultHandler : Dynamic) : Void;
	function setSliderParams(min : Float, max : Float, value : Float) : Void;
	private var _handle : flash.display.Sprite;
	private var _max : Float;
	private var _min : Float;
	private var _orientation : String;
	private var _tick : Float;
	private var _value : Float;
	private function correctValue() : Void;
	private function drawBack() : Void;
	private function drawHandle() : Void;
	private function onBackClick(event : flash.events.MouseEvent) : Void;
	private function onDrag(event : flash.events.MouseEvent) : Void;
	private function onDrop(event : flash.events.MouseEvent) : Void;
	private function onSlide(event : flash.events.MouseEvent) : Void;
	private function positionHandle() : Void;
	static var HORIZONTAL : String;
	static var VERTICAL : String;
}
