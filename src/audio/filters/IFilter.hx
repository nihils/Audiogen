package audio.filters;

interface IFilter
{
    function execute(input:Float):Float;
    function duplicate():IFilter;
}
