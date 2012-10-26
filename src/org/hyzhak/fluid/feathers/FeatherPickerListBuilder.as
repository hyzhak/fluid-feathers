package org.hyzhak.fluid.feathers
{
	import feathers.controls.PickerList;
	import feathers.data.ListCollection;

	public class FeatherPickerListBuilder extends DisplayObjectBuilder
	{
		final internal function initNewInstance() : FeatherPickerListBuilder
		{
			_instance = new PickerList();
			return this;
		}
		
		public function dataProvider(value : ListCollection) : FeatherPickerListBuilder
		{
			(_instance as PickerList).dataProvider = value;
			return this;
		}
	}
}