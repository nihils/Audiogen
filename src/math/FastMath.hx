package math;

import flash.Memory;

class FastMath
{
	static public inline function sin(theta:Float):Float {
		var x = (Std.int(theta*683565275.576431589782294)) >> 16;
		var sinB = (x - ((x * (x<0?-x:x)) >> 15)) * 41721;
		var sinC = sinB >> 15;
		var fix = sinB + (sinC * (sinC<0?-sinC:sinC) >> 9) * 467;
		return fix / 441009855.21060102566599663103894;
	}
	static public inline function cos(theta:Float):Float {
		return sin(theta + (Math.PI / 2));
	}
	static public inline function tan(theta:Float):Float {
		return sin(theta) / cos(theta);
	}
	static public inline function abs(x:Float):Float {
		Memory.setFloat(0, x);
		var i = Memory.getI32(0) & 0x7FFFFFFF;
		Memory.setI32(0, i);
		return Memory.getFloat(0);
	}
	static public inline function invsqrt(x:Float):Float {
		var half = 0.5 * x;
		Memory.setFloat(0, x);
		var i = 0x5F3759DF - (Memory.getI32(0) >> 1);
		Memory.setI32(0, i);
		x = Memory.getFloat(0);
		return x * (1.5 - half * x * x);
	}
	static public inline function sqrt(x:Float):Float {
		return 1 / invsqrt(x);
	}
}