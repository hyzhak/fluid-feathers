package org.hyzhak.fluid.feathers
{
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
		
		final public function x(value : Number) : DisplayObjectBuilder
		{
			_instance.x = value;
			return this;
		}
		
		final public function y(value : Number) : DisplayObjectBuilder
		{
			_instance.y = value;
			return this;
		}
		
		final public function width(value : Number) : DisplayObjectBuilder
		{
			_instance.width = value;
			return this;
		}
		
		final public function height(value : Number) : DisplayObjectBuilder
		{
			_instance.height = value;
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