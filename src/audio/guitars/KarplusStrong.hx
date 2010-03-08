package audio.guitars;

import flash.Vector;
import flash.utils.ByteArray;

import audio.ISynth;

class KarplusStrong implements ISynth
{
    private var freq:Float;
    private var amp:Float;
    private var periodn:Int;
    private var periodi:Int;
    private var periods:Vector<Float>;
    public var feed(default,default):Bool;
    
    public function new(_freq:Float) {
        freq = _freq;
    }
    public function execute(buffer:ByteArray, pos:Float):Void {
        periodn = Std.int(44100 / freq);
        periodi = 0;
        periods = new Vector<Float>(periodn, true);
        amp = 0.0;
        feed = true;
        for (c in 0...3072){
            if (periodi == periodn){ 
                periodi = 0;
                feed = false;
            }
            if (feed){
                periods[periodi] += Math.random() - Math.random();
            }
            amp += (periods[periodi] - amp) * .5;
            periods[periodi] = amp;
            buffer.writeFloat(amp);
            buffer.writeFloat(amp);
            periodi++;
        }
    }
}
