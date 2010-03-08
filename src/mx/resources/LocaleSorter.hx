package mx.resources;

extern class LocaleSorter {
	static function sortLocalesByPreference(appLocales : Array<Dynamic>, systemPreferences : Array<Dynamic>, ?ultimateFallbackLocale : String, ?addAll : Bool) : Array<Dynamic>;
}
