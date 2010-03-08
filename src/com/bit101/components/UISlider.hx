package com.bit101.components;

extern class UISlider extends Component {
	var label : String;
	var labelPrecision : Int;
	var maximum : Float;
	var minimum : Float;
	var tick : Float;
	var value : Float;
	function new(?parent : flash.display.DisplayObjectContainer, ?x : Float, ?y : Float, ?label : String, ?defaultEventHandler : Dynamic) : Void;
	function setSliderParams(min : Float, max : Float, value : Float) : Void;
	private var _label : Label;
	private var _slider : Slider;
	private var _sliderClass : Class<Dynamic>;
	private var _valueLabel : Label;
	private function formatValueLabel() : Void;
	private function onSliderChange(event : flash.events.Event) : Void;
	private function positionLabel() : Void;
}
