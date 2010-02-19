package audio;


class Convert 
{
    //TODO: Put constant multipliers for each note, to complete the note->frequency conversion algorithm
    public static function note(_note:Note):Float {
        var freq:Float = 0.0;
        switch(_note) {
            case A_F(o): freq = Math.pow(2, o - 1);
            case A(o): freq = Math.pow(2, o);
            case A_S(o): freq = Math.pow(2, o);

            case B_F(o): freq = Math.pow(2, o);
            case B(o): freq = Math.pow(2, o);
            case B_S(o): freq = Math.pow(2, o);

            case C_F(o): freq = Math.pow(2, o - 1);
            case C(o): freq = Math.pow(2, o - 1);
            case C_S(o): freq = Math.pow(2, o - 1);

            case D_F(o): freq = Math.pow(2, o - 1);
            case D(o): freq = Math.pow(2, o - 1);
            case D_S(o): freq = Math.pow(2, o - 1);

            case E_F(o): freq = Math.pow(2, o - 1);
            case E(o): freq = Math.pow(2, o - 1);
            case E_S(o): freq = Math.pow(2, o -1);

            case F_F(o): freq = Math.pow(2, o - 1);
            case F(o): freq = Math.pow(2, o - 1);
            case F_S(o): freq = Math.pow(2, o - 1);

            case G_F(o): freq = Math.pow(2, o - 1);
            case G(o): freq = Math.pow(2, o - 1);
            case G_S(o): freq = Math.pow(2, o - 1);
        }
        return freq;
    }
    public static function key(_key:Int):Float {
        return 440 * Math.pow(Math.pow(2, (1 / 12)), key - 49);
    }
    //TODO: Research midi#->frequency conversion algorithm
    public static function midi(_num:Int):Float {

    }
}
