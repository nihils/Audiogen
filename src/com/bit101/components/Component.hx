package com.bit101.components;

extern class Component extends flash.display.Sprite {
	var tag : Int;
	function new(?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float) : Void;
	function draw() : Void;
	function move(xpos : Float, ypos : Float) : Void;
	function setSize(w : Float, h : Float) : Void;
	private var _height : Float;
	private var _tag : Int;
	private var _width : Float;
	private function addChildren() : Void;
	private function getShadow(dist : Float, ?knockout : Bool) : flash.filters.DropShadowFilter;
	private function init() : Void;
	private function invalidate() : Void;
	private function onInvalidate(event : flash.events.Event) : Void;
	static var DRAW : String;
	static function initStage(stage : flash.display.Stage) : Void;
}
