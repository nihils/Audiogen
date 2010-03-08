package audio;

import flash.utils.ByteArray;

interface ISynth
{
    function execute(buffer:ByteArray, pos:Float):Void;
}
