package com.bit101.components;

extern class ProgressBar extends Component {
	var maximum : Float;
	var value : Float;
	function new(?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float) : Void;
	private function update() : Void;
}
