package mx.core;

extern class EmbeddedFontRegistry implements IEmbeddedFontRegistry {
	function new() : Void;
	function deregisterFont(font : EmbeddedFont, moduleFactory : IFlexModuleFactory) : Void;
	function getAssociatedModuleFactory(font : EmbeddedFont, defaultModuleFactory : IFlexModuleFactory) : IFlexModuleFactory;
	function getFonts() : Array<Dynamic>;
	function registerFont(font : EmbeddedFont, moduleFactory : IFlexModuleFactory) : Void;
	static function getFontStyle(bold : Bool, italic : Bool) : String;
	static function getInstance() : IEmbeddedFontRegistry;
	static function registerFonts(fonts : Dynamic, moduleFactory : IFlexModuleFactory) : Void;
}
