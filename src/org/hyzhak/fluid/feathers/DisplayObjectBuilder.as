package org.hyzhak.fluid.feathers
{
	import starling.display.DisplayObject;
	import starling.display.DisplayObjectContainer;
	import starling.events.Event;

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
		
		final public function onTriggered(handler : Function) : DisplayObjectBuilder
		{
			_instance.addEventListener(Event.TRIGGERED, handler);
			return this;
		}
		
		final public function buildAndAddTo(parent : DisplayObjectContainer) : DisplayObject
		{
			parent.addChild(_instance);
			return _instance;
		}
	}
}