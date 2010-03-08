package audio.oscillators;

import flash.utils.ByteArray;

import audio.ISynth;

class SawtoothAliased implements ISynth
{
    private var amp:Float;
    private var phase:Float;
    private var freq:Float;

    public function new(_freq:Float) {
        freq = _freq;
    }
    public function execute(buffer:ByteArray, pos:Float):Void {
        amp = 0.0;
        for (c in 0...3072){
            var phase:Float = ((c + pos) % (44100 / freq)) / (44100 / freq);
	    amp = 2 * ((phase + 0.5) - Std.int(phase + 1));
		
	    buffer.writeFloat(amp);
	    buffer.writeFloat(amp);
	}
    }
}
