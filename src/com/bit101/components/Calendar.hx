package com.bit101.components;

extern class Calendar extends Panel {
	var day(default,null) : Int;
	var month(default,null) : Int;
	var selectedDate(default,null) : Date;
	var year(default,null) : Int;
	function new(?parent : flash.display.DisplayObjectContainer, ?xpos : Float, ?ypos : Float) : Void;
	function setDate(date : Date) : Void;
	function setYearMonthDay(year : Int, month : Int, day : Int) : Void;
	private function getEndDay(month : Int, year : Int) : Int;
	private function onDayClick(event : flash.events.MouseEvent) : Void;
	private function onNextMonth(event : flash.events.MouseEvent) : Void;
	private function onNextYear(event : flash.events.MouseEvent) : Void;
	private function onPrevMonth(event : flash.events.MouseEvent) : Void;
	private function onPrevYear(event : flash.events.MouseEvent) : Void;
}
