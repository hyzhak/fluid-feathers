package org.hyzhak.fluid.feathers
{
	import feathers.controls.Button;

	public class FeatherButtonBuilder extends DisplayObjectBuilder
	{
		final internal function initNewInstance() : FeatherButtonBuilder
		{
			_instance = new Button();
			return this;
		}
		
		final public function label(value : String) : FeatherButtonBuilder
		{
			(_instance as Button).label = value;
			return this;
		}
	}
}