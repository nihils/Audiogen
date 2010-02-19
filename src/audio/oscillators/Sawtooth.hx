package audio.oscillators;

import flash.utils.ByteArray;

import audio.ISynth;

import math.FastMath;

class Sawtooth implements ISynth
{
	private var amp:Float;
	private var phase:Float;
	private var freq:Float;
	private var harmonics:Int;
	
	public function new(_freq:Float, _harmonics:Int) {
		freq = _freq;
		harmonics = _harmonics;
	}
	public function execute(buffer:ByteArray):Void {
		phase = 0.0;
		for (c in 0...3072){
			amp = 0.0;
			for (h in 1...harmonics){
				amp += (1 / h) * FastMath.sin(phase * (h << 1) * Math.PI);
			}
			phase += freq / 44100;
			
			if (phase > 1) --phase;
			
			buffer.writeFloat(-(2 / Math.PI) * amp);
			buffer.writeFloat(-(2 / Math.PI) * amp);
		}
	}
}