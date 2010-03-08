package com.bit101.components;

extern class WheelMenu extends Component {
	var borderColor : UInt;
	var color : UInt;
	var highlightColor : UInt;
	var selectedIndex(default,null) : Int;
	var selectedItem(default,null) : Dynamic;
	function new(parent : flash.display.DisplayObjectContainer, numButtons : Int, ?outerRadius : Float, ?iconRadius : Float, ?innerRadius : Float, ?defaultHandler : Dynamic) : Void;
	function hide() : Void;
	function setItem(index : Int, iconOrLabel : Dynamic, ?data : Dynamic) : Void;
	function show() : Void;
	private function makeButtons() : Void;
	private function onSelect(event : flash.events.Event) : Void;
	private function onStageMouseUp(event : flash.events.MouseEvent) : Void;
}
