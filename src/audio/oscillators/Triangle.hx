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
    public function execute(buffer:ByteArray):Void {
        phase = 0.0;
        for (c in 0...3072){
            amp = 0.0;
            for (h in 1...harmonics){
                amp += (Math.pow(-1, h) / (((h << 1) - 1) * ((h << 1) - 1))) * FastMath.sin(phase * (((h << 1) - 1) << 1) * Math.PI);
            }
            phase += freq / 44100;

            if (phase > 1) --phase;

            buffer.writeFloat((8 / (Math.PI * Math.PI)) * amp);
            buffer.writeFloat((8 / (Math.PI * Math.PI)) * amp);
        }
    }
}
