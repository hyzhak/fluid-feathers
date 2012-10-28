package org.hyzhak.fluid.feathers
{
	import feathers.controls.Label;
	
	import org.hyzhak.fluid.feathers.binding.BindProperty;

	public class FeatherLabelBuilder extends DisplayObjectBuilder
	{
		final internal function initNewInstance() : FeatherLabelBuilder
		{
			_instance = new Label();
			return this;
		}
		
		public function text(value : Object) : FeatherLabelBuilder
		{
			if(value is BindProperty)
			{
				(value as BindProperty).bindTo(_instance, "text");
			}
			else if(value is String)
			{
				(_instance as Label).text = value as String;				
			}
			return this;
		}
	}
}