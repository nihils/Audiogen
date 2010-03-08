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
    public function execute(buffer:ByteArray, pos:Float):Void {
        for (c in 0...3072){
            var phase:Float = ((c + pos) % (44100 / freq)) / (44100 / freq);
            amp = 0.0;
            for (h in 1...harmonics){
                amp += (1 / h) * FastMath.sin(phase * (h << 1) * Math.PI);
            }
            buffer.writeFloat(-(2 / Math.PI) * amp);
            buffer.writeFloat(-(2 / Math.PI) * amp);
        }
    }
}
