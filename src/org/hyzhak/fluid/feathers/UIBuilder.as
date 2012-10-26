package org.hyzhak.fluid.feathers
{
	public interface UIBuilder
	{
		function newButton() : FeatherButtonBuilder;
		function newLabel() : FeatherLabelBuilder;
		function newPickerList() : FeatherPickerListBuilder;
		function newList() : FeatherListBuilder;
	}
}