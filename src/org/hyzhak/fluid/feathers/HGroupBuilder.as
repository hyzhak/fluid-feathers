package org.hyzhak.fluid.feathers
{
	import feathers.controls.ScrollContainer;
	import feathers.layout.HorizontalLayout;

	public class HGroupBuilder extends GroupBuilder
	{
		final internal function initNewInstance() : HGroupBuilder
		{
			var layout : HorizontalLayout = new HorizontalLayout();
			layout.gap = 0;
			
			var container : ScrollContainer = new ScrollContainer();
			container.layout = layout;
			_instance = container;
			return this;
		}
		
		final public function gap(value : Number) : GroupBuilder
		{
			((_instance as ScrollContainer).layout as HorizontalLayout).gap = value; 
			return this;
		}
	}
}