package org.hyzhak.fluid.feathers
{
	import feathers.controls.Label;
	
	import org.hyzhak.fluid.feathers.binding.BindManager;

	public class FeatherLabelBuilder extends DisplayObjectBuilder
	{
		final internal function initNewInstance() : FeatherLabelBuilder
		{
			_instance = new Label();
			return this;
		}
		
		public function text(value : Object) : FeatherLabelBuilder
		{
			BindManager.setProperty(_instance, "text", value);
			
			return this;
		}
	}
}