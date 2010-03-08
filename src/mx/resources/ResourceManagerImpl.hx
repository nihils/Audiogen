package mx.resources;

extern class ResourceManagerImpl extends flash.events.EventDispatcher, implements IResourceManager {
	var localeChain : Array<Dynamic>;
	function new() : Void;
	function addResourceBundle(resourceBundle : IResourceBundle) : Void;
	function findResourceBundleWithResource(bundleName : String, resourceName : String) : IResourceBundle;
	function getBoolean(bundleName : String, resourceName : String, ?locale : String) : Bool;
	function getBundleNamesForLocale(locale : String) : Array<Dynamic>;
	function getClass(bundleName : String, resourceName : String, ?locale : String) : Class<Dynamic>;
	function getInt(bundleName : String, resourceName : String, ?locale : String) : Int;
	function getLocales() : Array<Dynamic>;
	function getNumber(bundleName : String, resourceName : String, ?locale : String) : Float;
	function getObject(bundleName : String, resourceName : String, ?locale : String) : Dynamic;
	function getPreferredLocaleChain() : Array<Dynamic>;
	function getResourceBundle(locale : String, bundleName : String) : IResourceBundle;
	function getString(bundleName : String, resourceName : String, ?parameters : Array<Dynamic>, ?locale : String) : String;
	function getStringArray(bundleName : String, resourceName : String, ?locale : String) : Array<Dynamic>;
	function getUint(bundleName : String, resourceName : String, ?locale : String) : UInt;
	function initializeLocaleChain(compiledLocales : Array<Dynamic>) : Void;
	function installCompiledResourceBundles(applicationDomain : flash.system.ApplicationDomain, locales : Array<Dynamic>, bundleNames : Array<Dynamic>) : Void;
	function loadResourceModule(url : String, ?updateFlag : Bool, ?applicationDomain : flash.system.ApplicationDomain, ?securityDomain : flash.system.SecurityDomain) : flash.events.IEventDispatcher;
	function removeResourceBundle(locale : String, bundleName : String) : Void;
	function removeResourceBundlesForLocale(locale : String) : Void;
	function unloadResourceModule(url : String, ?update : Bool) : Void;
	function update() : Void;
	static function getInstance() : IResourceManager;
}
