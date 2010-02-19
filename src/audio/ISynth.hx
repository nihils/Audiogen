package audio;

import flash.utils.ByteArray;

interface ISynth
{
	function execute(buffer:ByteArray):Void;
}
