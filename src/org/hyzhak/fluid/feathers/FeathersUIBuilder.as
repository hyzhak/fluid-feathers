package org.hyzhak.fluid.feathers
{
	import feathers.controls.Button;
	import feathers.controls.Label;
	import feathers.controls.List;
	import feathers.controls.PickerList;

	public class FeathersUIBuilder implements UIBuilder
	{
		private var _buttonBuilder:FeatherButtonBuilder = new FeatherButtonBuilder();
		private var _labelBuilder:FeatherLabelBuilder = new FeatherLabelBuilder();
		private var _listBuilder:FeatherListBuilder = new FeatherListBuilder();
		private var _pickerListBuilder:FeatherPickerListBuilder = new FeatherPickerListBuilder();
		
		public function button():FeatherButtonBuilder
		{
			_buttonBuilder.instance = new Button();
			return _buttonBuilder;
		}
		
		public function label():FeatherLabelBuilder
		{
			_labelBuilder.instance = new Label();
			return _labelBuilder;
		}
		
		public function list():FeatherListBuilder
		{
			_listBuilder.instance = new List();
			return _listBuilder;
		}
		
		public function pickerList():FeatherPickerListBuilder
		{
			_pickerListBuilder.instance = new PickerList();
			return _pickerListBuilder;
		}
		
		
	}
}