package org.hyzhak.fluid.feathers
{
	public interface UIBuilder
	{
		function button() : FeatherButtonBuilder;
		function label() : FeatherLabelBuilder;
		function pickerList() : FeatherPickerListBuilder;
		function list() : FeatherListBuilder;
	}
}