package audio.oscillators;

import flash.utils.ByteArray;

import audio.ISynth;

import math.FastMath;

class Triangle implements ISynth
{
    private var amp:Float;
    private var phase:Float;
    private var freq:Float;
    private var harmonics:Int;

    public function new(_freq:Float, _harmonics:Int) {
        freq = _freq;
        harmonics = _harmonics;
    }
    public function execute(buffer:ByteArray, pos:Float):Void {
        for (c in 0...3072){
            var phase:Float = ((c + pos) % (44100 / freq)) / (44100 / freq);
            amp = 0.0;
            for (h in 1...harmonics){
                amp += (Math.pow(-1, h) / (((h << 1) - 1) * ((h << 1) - 1))) * FastMath.sin(phase * (((h << 1) - 1) << 1) * Math.PI);
            }
            buffer.writeFloat((8 / (Math.PI * Math.PI)) * amp);
            buffer.writeFloat((8 / (Math.PI * Math.PI)) * amp);
        }
    }
}
