package audio.oscillators;

import flash.utils.ByteArray;

import audio.ISynth;
import audio.filters.IFilter;

import math.FastMath;

class Sine implements ISynth 
{
    private var amp:Float;
    private var phase:Float;
    private var freq:Float;
    public var filters(default,default):Array<IFilter>;

    public function new(_freq:Float) {
	freq = _freq;
        filters = new Array<IFilter>();
    }
    public function execute(buffer:ByteArray, pos:Float):Void {
	for (c in 0...3072){
	    var phase:Float = ((c + pos) % (44100 / freq)) / (44100 / freq);
	    amp = FastMath.sin(phase * 2 * Math.PI);
	    buffer.writeFloat(amp);
	    buffer.writeFloat(amp);
	}
    }
    private function applyFilters(input:Float):Float {
        var output:Float = input; 
        for (filter in filters) {
            output = filter.execute(output); 
        }
        return output;
    }
}
