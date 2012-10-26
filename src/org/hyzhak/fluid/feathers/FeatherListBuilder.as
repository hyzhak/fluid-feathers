package org.hyzhak.fluid.feathers
{
	import feathers.controls.List;
	import feathers.data.ListCollection;

	public class FeatherListBuilder extends DisplayObjectBuilder
	{
		public function dataProvider(value : ListCollection) : FeatherListBuilder
		{
			(_instance as List).dataProvider = value;
			return this;
		}
		
		public function selectable(value : Boolean) : FeatherListBuilder
		{
			(_instance as List).isSelectable = value;
			return this;
		}
	}
}