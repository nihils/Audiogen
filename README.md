Audiogen haXe/Flash library was created by Nihil Shah (Copyright 2010) as a proof-of-concept of various sound synthesis algorithms

License
=======
Audiogen haXe/Flash library is licensed under [Creative Commons Attribution Non-Commercial ShareAlike 3.0 Unported](http://creativecommons.org/licenses/by-nc-sa/3.0)

OOP Structure
=============
Every synthesis algorithm implements the audio.ISynth interface, this ensures that every algorithm implements the execute function. This also ensures that all the algorithms share one type which allows for runtime switching of synthesis.  

Currently, every synthesis class requires that the frequency of the resulting wave is passed to the constructer. Use the audio.Convert class and audio.Note enum to convert notes into the right frequency values. The audio.Convert class can also convert piano key number to frequency.  

Basic Usage
-----------
    class Main
    {
        private var snd:flash.media.Sound;
        private var syn:audio.ISynth;

        public function new() {
            //Play a pure toned A in the 4th octave (440 Hz)
            syn = new audio.oscillators.Sine(440);

            //Or a sawtooth fourier series A in the 4th octave with 7 harmonics
            //syn = new audio.oscillators.Sawtooth(440, 7);
	    
            //Or a KarplusStrong guitar playing A in the 4th octave
            //syn = new audio.instruments.KarplusStrong(440);
        
            snd = new flash.media.Sound();
            snd.addEventListener(flash.events.SampleDataEvent.SAMPLE_DATA, onSampleData);
            snd.play();
        }
        public function onSampleData(event:flash.events.SampleDataEvent):Void {
            syn.execute(event.data, event.position);
        }
        public static function main():Void {
            var m:Main = new Main();
        }
    }

Runtime Initialization 
----------------------
    class Main
    {
        private var snd:flash.media.Sound;
        private var syn:audio.ISynth;
       
        public function new() {
            //Play a pure toned A in the 4th octave (440 Hz) initialized at runtime
            syn = Type.createInstance(Type.resolveClass("audio.oscillators.Sine"), [440]);

            snd = new flash.media.Sound();
            snd.addEventListener(flash.events.SampleDataEvent.SAMPLE_DATA, onSampleData);
            snd.play();
        }
        public function onSampleData(event:flash.events.SampleDataEvent):Void {
            syn.execute(event.data, event.position);
        }
        public static function main():Void {
            var m:Main = new Main();
        }
    }

Advanced Usage
--------------
View the [src/Audiogen.hx](blob/master/src/Audiogen.hx) file

School Project
==============
This was part of my group's project on sound wave synthesis and the fourier series

Commercial Use
==============
If you would like to use Audiogen haXe/Flash commercially without violating the license, please contact me at <nshah311@gmail.com>
