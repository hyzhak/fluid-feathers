package org.hyzhak.fluid.feathers
{
	import org.hyzhak.fluid.feathers.binding.BindManager;
	
	import starling.display.DisplayObject;
	import starling.display.DisplayObjectContainer;
	import starling.events.Event;
	import starling.events.TouchEvent;

	public class DisplayObjectBuilder
	{
		protected var _instance : DisplayObject;
		
		internal function set instance(value : DisplayObject) : void
		{
			_instance = value;
		}
		
		final public function x(value : Object) : DisplayObjectBuilder
		{
			BindManager.setProperty(_instance, "x", value);
			return this;
		}
		
		final public function y(value : Object) : DisplayObjectBuilder
		{
			BindManager.setProperty(_instance, "y", value);
			return this;
		}
		
		final public function width(value : Object) : DisplayObjectBuilder
		{
			BindManager.setProperty(_instance, "width", value);
			return this;
		}
		
		final public function height(value : Object) : DisplayObjectBuilder
		{
			BindManager.setProperty(_instance, "height", value);			
			return this;
		}
		
		final public function rotation(value : Object) : DisplayObjectBuilder
		{
			BindManager.setProperty(_instance, "rotation", value);
			return this;
		}
		
		final public function onTriggered(handler : Function) : DisplayObjectBuilder
		{
			_instance.addEventListener(Event.TRIGGERED, handler);
			return this;
		}
		
		final public function onTouch(handler : Function) : DisplayObjectBuilder
		{
			_instance.addEventListener(TouchEvent.TOUCH, handler);
			return this;
		}
		
		final public function build() : DisplayObject
		{
			return _instance;
		}
		
		final public function buildAndAddTo(parent : DisplayObjectContainer) : DisplayObject
		{
			parent.addChild(_instance);
			return _instance;
		}
	}
}