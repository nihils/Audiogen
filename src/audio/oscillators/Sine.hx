package audio.oscillators;

import flash.utils.ByteArray;

import audio.ISynth;

import math.FastMath;

class Sine implements ISynth
{
    private var amp:Float;
    private var phase:Float;
    private var freq:Float;

    public function new(_freq:Float) {
	freq = _freq;
    }
    public function execute(buffer:ByteArray, pos:Float):Void {
	for (c in 0...3072){
	    var phase:Float = ((c + pos) % (44100 / freq)) / (44100 / freq);
	    amp = FastMath.sin(phase * 2 * Math.PI);
	    buffer.writeFloat(amp);
	    buffer.writeFloat(amp);
	}
    }
}
