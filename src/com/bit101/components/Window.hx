package com.bit101.components;

extern class Window extends Component {
	var color : Int;
	var content(default,null) : flash.display.DisplayObjectContainer;
	var draggable : Bool;
	var hasMinimizeButton : Bool;
	var minimized : Bool;
	var shadow : Bool;
	var title : String;
	function new(?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float, ?title : String) : Void;
	private function onMinimize(event : flash.events.MouseEvent) : Void;
	private function onMouseDown(event : flash.events.MouseEvent) : Void;
	private function onMouseUp(event : flash.events.MouseEvent) : Void;
}
