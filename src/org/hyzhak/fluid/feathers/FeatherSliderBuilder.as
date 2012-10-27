package org.hyzhak.fluid.feathers
{
	import feathers.controls.Slider;
	
	import starling.events.Event;

	public class FeatherSliderBuilder extends DisplayObjectBuilder
	{
		final internal function initNewInstance() : FeatherSliderBuilder
		{
			_instance = new Slider();
			return this;
		}
		
		final public function between(minimum : Number, maximum : Number) : FeatherSliderBuilder
		{
			var slider : Slider = _instance as Slider;
			slider.minimum = minimum;
			slider.maximum = maximum;
			return this;
		}
			
		final public function withValue(value : Number) : FeatherSliderBuilder
		{
			(_instance as Slider).value = value;
			return this;
		}
			
		final public function onChange(handler : Function) : FeatherSliderBuilder
		{
			_instance.addEventListener(Event.CHANGE, handler);
			return this;
		}
	}
}