package com.bit101.components;

extern class IndicatorLight extends Component {
	var color : UInt;
	var isFlashing(default,null) : Bool;
	var isLit : Bool;
	var label : String;
	function new(?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float, ?color : UInt, ?label : String) : Void;
	function flash(?interval : Int) : Void;
	private function drawLite() : Void;
	private function onTimer(event : flash.events.TimerEvent) : Void;
}
