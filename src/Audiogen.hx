package ; 

import flash.Lib;
import flash.display.LoaderInfo;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.events.SampleDataEvent;
import flash.media.Sound;
import flash.media.SoundMixer;
import flash.utils.ByteArray;

import audio.Convert;
import audio.Note;
import audio.ISynth;
import audio.instruments.KarplusStrong;
import audio.oscillators.Sawtooth;
import audio.oscillators.SawtoothAliased;
import audio.oscillators.Sine;
import audio.oscillators.Square;
import audio.oscillators.SquareAliased;
import audio.oscillators.Triangle;
import audio.oscillators.TriangleAliased;

import math.FastMath;

class Audiogen
{
    private var snd:Sound;
    private var syn:ISynth;
    private var ba:ByteArray;

    public function new() {
        var content:Int = Std.parseInt(Lib.as(Lib.current.loaderInfo, LoaderInfo).parameters.content);
	var freq:Float = Std.parseFloat(Lib.as(Lib.current.loaderInfo, LoaderInfo).parameters.freq);
        switch (content){
            case 1: syn = new Sawtooth(freq, 7);
            case 2: syn = new SawtoothAliased(freq);
            case 3: syn = new Square(freq, 7);
            case 4: syn = new SquareAliased(freq));
            case 5: syn = new Triangle(freq, 7);
            case 6: syn = new TriangleAliased(freq);
            case 7: syn = new KarplusStrong(freq);
            default: syn = new Sine(freq);
        }
        snd = new Sound();
        snd.addEventListener(SampleDataEvent.SAMPLE_DATA, onSampleData); 
        snd.play();
        Lib.current.addEventListener(Event.ENTER_FRAME, onEnterFrame);
        ba = new ByteArray();
    }
    private function onSampleData(event:SampleDataEvent):Void {
        var timer = Lib.getTimer();
        syn.execute(event.data, event.position);
        trace(Lib.getTimer() - timer);
    }
    private function onEnterFrame(event:Event):Void {
        SoundMixer.computeSpectrum(ba, false);
        Lib.current.graphics.clear();
        Lib.current.graphics.lineStyle(1, 0xFF0000);
        Lib.current.graphics.moveTo((Lib.current.stage.stageWidth / 2), (Lib.current.stage.stageHeight / 2));
        for (i in 0...512){
            var lev:Float = ba.readFloat() * 30;
            Lib.current.graphics.lineTo(i + (Lib.current.stage.stageWidth / 2), (Lib.current.stage.stageHeight / 2) - lev);
        }
    }
    public static function main():Void {
        var m:Audiogen = new Audiogen();
    }
}
