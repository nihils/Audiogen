package mx.core;

extern interface IFlexModuleFactory {
	var preloadedRSLs(default,null) : flash.utils.Dictionary;
	function allowDomain( ?p1 : Dynamic, ?p2 : Dynamic, ?p3 : Dynamic, ?p4 : Dynamic, ?p5 : Dynamic ) : Void;
	function allowInsecureDomain( ?p1 : Dynamic, ?p2 : Dynamic, ?p3 : Dynamic, ?p4 : Dynamic, ?p5 : Dynamic ) : Void;
	function create( ?p1 : Dynamic, ?p2 : Dynamic, ?p3 : Dynamic, ?p4 : Dynamic, ?p5 : Dynamic ) : Dynamic;
	function info() : Dynamic;
}
