package mx.core;

extern interface IEmbeddedFontRegistry {
	function deregisterFont(font : EmbeddedFont, moduleFactory : IFlexModuleFactory) : Void;
	function getAssociatedModuleFactory(font : EmbeddedFont, defaultModuleFactory : IFlexModuleFactory) : IFlexModuleFactory;
	function getFonts() : Array<Dynamic>;
	function registerFont(font : EmbeddedFont, moduleFactory : IFlexModuleFactory) : Void;
}
