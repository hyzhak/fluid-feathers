package org.hyzhak.fluid.feathers
{
	public interface UIBuilder
	{
		function button() : FeatherButtonBuilder;
		function label() : FeatherLabelBuilder;
		function slider() : FeatherSliderBuilder;
			
		function pickerList() : FeatherPickerListBuilder;
		function list() : FeatherListBuilder;
		
		function vGroup() : VGroupBuilder;
		function hGroup() : HGroupBuilder;
	}
}