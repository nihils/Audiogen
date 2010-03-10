Audiogen haXe/Flash library was created by Nihil Shah (Copyright 2010) as a proof-of-concept of various sound synthesis algorithms

License
=======
Audiogen haXe/Flash library is licensed under the [Creative Commons Attribution Non-Commercial ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-nc-sa/3.0)

Basic OOP Structure
===================
Every synthesis algorithm implements the audio.ISynth interface, this ensures that every algorithm implements the execute function. This also ensures that all the algorithms share one type, allowing for runtime-switching of synthesis.  

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
        
            snd = new flash.media.Sound();
            snd.addEventListener(flash.events.SampleDataEvent.SAMPLE_DATA, onSampleData);
            snd.play();
        }
        public function onSampleData(event:SampleDataEvent):Void {
            syn.execute(event.data, event.position);
        }
        //Entry point 
        public static function main():Void {
            var m:Main = new Main();
        }
    }

Advanced Usage
--------------
View src/Audiogen.hx file

Convert Usage
-------------
TODO
