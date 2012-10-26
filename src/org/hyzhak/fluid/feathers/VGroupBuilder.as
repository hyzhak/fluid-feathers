package org.hyzhak.fluid.feathers
{
	import feathers.controls.ScrollContainer;
	import feathers.layout.VerticalLayout;

	public class VGroupBuilder extends GroupBuilder
	{
		final internal function initNewInstance() : VGroupBuilder
		{
			var layout : VerticalLayout = new VerticalLayout();
			layout.gap = 0;
			
			var container : ScrollContainer = new ScrollContainer();
			container.layout = layout;
			_instance = container;
			return this;
		}
		
		final public function gap(value : Number) : GroupBuilder
		{
			((_instance as ScrollContainer).layout as VerticalLayout).gap = value; 
			return this;
		}
	}
}