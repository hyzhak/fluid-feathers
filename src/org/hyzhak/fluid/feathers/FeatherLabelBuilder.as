package org.hyzhak.fluid.feathers
{
	import feathers.controls.Label;

	public class FeatherLabelBuilder extends DisplayObjectBuilder
	{
		public function text(value : String) : FeatherLabelBuilder
		{
			(_instance as Label).text = value;
			return this;
		}
	}
}