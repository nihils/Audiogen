package audio.filters;

import flash.Vector;

class DelayFilter implements IFilter
{ 
    public var feedback(default,setFeedback):Float;
    public var usems(default,setUsems):Float;
    public var mix(default,setMix):Float;
    public var length(default,setLength):Int;

    private var readPointer:Int;
    private var writePointer:Int;
    private var delayValue:Float;
    private var buffer:Vector<Float>;
    private var copy:DelayFilter;

    public function new(?_feedback:Float, ?_length:Int, ?_mix:Float, ?_usems:Bool) {
        _feedback == null ? feedback = 0.75 : feedback = _feedback;
        _length == null ? length = 17640 : length = _length;
        _mix == null ? mix = 0.7 : mix = _mix;
        _usems == null ? usems = false : usems = _usems;
        readPointer = 0;
        writePointer = 0;
    }
    public function execute(input:Float):Float {
        readPointer = writePointer - length + 1;
        if (readPointer < 0) readPointer += length;
        delayValue = buffer[readPointer];
        buffer[writePointer] = input * (1 - feedback) + delayValue * feedback;
        if (++writePointer == length) writePointer = 0;
        return input (1 - mix) + delayValue * mix;
    }
    public function duplicate():IFilter {
        var l:Float = length;
        if (usems) l /= 44100 * 0.001;
        copy = new DelayFilter(feedback, l, mix, usems);
        return copy;
    }
    public function setFeedback(_feedback:Float):Void {
        feedback = _feedback; 
        if (copy) copy.feedback = _feedback;
    }
    public function setUsems(_usems:Bool):Void {
        usems = _usems;
        if (copy) copy.usems = _usems;
    }
    public function setMix(_mix:Float):Void {
        mix = _mix;
        if (copy) copy.mix = _mix;
    }
    public function setLength(_length:Int):Void {
        if (copy) copy.length = length;
        if (usems) {
            length = Std.int(length * 44100 * 0.001);
        }
        var newBuffer:Vector<Float> = new Vector<Float>(length, true);
        if (buffer) newBuffer.concat(buffer);
        buffer = newBuffer;
        writePointer = 0;
        length = _length
    }
}
