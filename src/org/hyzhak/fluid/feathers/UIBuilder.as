package org.hyzhak.fluid.feathers
{
	import starling.textures.Texture;

	public interface UIBuilder
	{
		function button() : FeatherButtonBuilder;
		function label() : FeatherLabelBuilder;
		function slider() : FeatherSliderBuilder;
		
		function image(texture : Texture) : FeatherImageBuilder;
			
		function pickerList() : FeatherPickerListBuilder;
		function list() : FeatherListBuilder;
		
		function vGroup() : VGroupBuilder;
		function hGroup() : HGroupBuilder;
	}
}