package mx.resources;

extern interface IResourceBundle {
	var bundleName(default,null) : String;
	var content(default,null) : Dynamic;
	var locale(default,null) : String;
}
