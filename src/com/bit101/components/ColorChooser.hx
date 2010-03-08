package com.bit101.components;

extern class ColorChooser extends Component {
	var model : flash.display.DisplayObject;
	var popupAlign : String;
	var usePopup : Bool;
	var value : UInt;
	function new(?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float, ?value : UInt, ?defaultHandler : Dynamic) : Void;
	private function onChange(event : flash.events.Event) : Void;
	static var BOTTOM : String;
	static var TOP : String;
}
