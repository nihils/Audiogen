package audio;

class Convert 
{
    public static function note(_note:Note):Float {
        var freq:Float = 0.0;
        switch(_note) {
            case A_F(o): freq = Math.pow(2, o - 1) * 51.9131;
            case A(o): freq = Math.pow(2, o) * 27.5;
            case A_S(o): freq = Math.pow(2, o) * 29.1352;

            case B_F(o): freq = Math.pow(2, o) * 29.1352;
            case B(o): freq = Math.pow(2, o) * 30.8677;

            case C(o): freq = Math.pow(2, o - 1) * 32.7032;
            case C_S(o): freq = Math.pow(2, o - 1) * 34.6478;

            case D_F(o): freq = Math.pow(2, o - 1) * 34.6478;
            case D(o): freq = Math.pow(2, o - 1) * 36.7081;
            case D_S(o): freq = Math.pow(2, o - 1) * 38.8909;

            case E_F(o): freq = Math.pow(2, o - 1) * 38.8909;
            case E(o): freq = Math.pow(2, o - 1) * 41.2034;

            case F(o): freq = Math.pow(2, o - 1) * 43.6535;
            case F_S(o): freq = Math.pow(2, o - 1) * 46.2493;

            case G_F(o): freq = Math.pow(2, o - 1) * 46.2493;
            case G(o): freq = Math.pow(2, o - 1) * 48.9994;
            case G_S(o): freq = Math.pow(2, o - 1) * 51.9131;
        }
        return freq;
    }
    public static function key(_key:Int):Float {
        return 440 * Math.pow(Math.pow(2, (1 / 12)), _key - 49);
    }
    //TODO: Research midi#->frequency conversion algorithm
    public static function midi(_num:Int):Float {
	return 0.0;
    }
}
