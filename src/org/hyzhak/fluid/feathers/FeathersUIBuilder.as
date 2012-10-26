package org.hyzhak.fluid.feathers
{
	import feathers.controls.Button;
	import feathers.controls.Label;

	public class FeathersUIBuilder implements UIBuilder
	{
		private var _buttonBuilder:FeatherButtonBuilder = new FeatherButtonBuilder();
		private var _labelBuilder:FeatherLabelBuilder = new FeatherLabelBuilder();
		
		public function newButton():FeatherButtonBuilder
		{
			_buttonBuilder.instance = new Button();
			return _buttonBuilder;
		}
		
		public function newLabel():FeatherLabelBuilder
		{
			_labelBuilder.instance = new Label();
			return _labelBuilder;
		}
	}
}