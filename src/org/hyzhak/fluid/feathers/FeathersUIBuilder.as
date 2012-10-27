package org.hyzhak.fluid.feathers
{
	import feathers.controls.Slider;
	
	import starling.textures.Texture;
	

	public class FeathersUIBuilder implements UIBuilder
	{
		private var _buttonBuilder:FeatherButtonBuilder = new FeatherButtonBuilder();
		private var _labelBuilder:FeatherLabelBuilder = new FeatherLabelBuilder();
		private var _listBuilder:FeatherListBuilder = new FeatherListBuilder();
		private var _pickerListBuilder:FeatherPickerListBuilder = new FeatherPickerListBuilder();
		private var _hGroupBuilder:HGroupBuilder = new HGroupBuilder();
		private var _vGroupBuilder:VGroupBuilder = new VGroupBuilder();
		private var _sliderBuilder:FeatherSliderBuilder = new FeatherSliderBuilder();
		private var _featherImageBuilder:FeatherImageBuilder = new FeatherImageBuilder();
		
		public function button():FeatherButtonBuilder
		{
			return _buttonBuilder.initNewInstance();
		}
		
		public function label():FeatherLabelBuilder
		{
			return _labelBuilder.initNewInstance();
		}
		
		public function list():FeatherListBuilder
		{
			return _listBuilder.initNewInstance();
		}
		
		public function pickerList():FeatherPickerListBuilder
		{
			return _pickerListBuilder.initNewInstance();
		}
		
		public function hGroup():HGroupBuilder
		{
			return _hGroupBuilder.initNewInstance();
		}
		
		public function vGroup():VGroupBuilder
		{
			return _vGroupBuilder.initNewInstance();
		}
		
		public function slider():FeatherSliderBuilder
		{
			return _sliderBuilder.initNewInstance();
		}
		
		public function image(texture : Texture) : FeatherImageBuilder
		{
			return _featherImageBuilder.initNewInstance(texture);
		}
	}
}