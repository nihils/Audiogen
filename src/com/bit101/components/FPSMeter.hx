package com.bit101.components;

extern class FPSMeter extends Component {
	var fps(default,null) : Int;
	var prefix : String;
	function new(?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float, ?prefix : String) : Void;
	function start() : Void;
	function stop() : Void;
	private function onEnterFrame(event : flash.events.Event) : Void;
	private function onRemovedFromStage(event : flash.events.Event) : Void;
}
