package audio.oscillators;

import flash.utils.ByteArray;

import audio.ISynth;

import math.FastMath;

class SquareAliased implements ISynth
{
	private var amp:Float;
	private var phase:Float;
	private var freq:Float;
	
	public function new(_freq:Float) {
		freq = _freq;
	}
	public function execute(buffer:ByteArray):Void {
		phase = 0.0;
		for (c in 0...3072){
			amp = sgn(FastMath.sin(phase * 2 * Math.PI));
			
			phase += freq / 44100;
			
			if (phase > 1) --phase;
			
			buffer.writeFloat(amp);
			buffer.writeFloat(amp);
		}
	}
	inline function sgn(x:Float):Float {
		return x < 0 ? -1 : 1;
	}
}
