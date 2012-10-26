package org.hyzhak.fluid.feathers
{
	import feathers.controls.List;
	import feathers.data.ListCollection;

	public class FeatherListBuilder extends DisplayObjectBuilder
	{
		final internal function initNewInstance() : FeatherListBuilder
		{
			_instance = new List();
			return this;
		}
		
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