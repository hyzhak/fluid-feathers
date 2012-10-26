package org.hyzhak.fluid.feathers
{
	import starling.display.DisplayObject;
	import starling.display.DisplayObjectContainer;

	public class GroupBuilder extends DisplayObjectBuilder
	{
		public function contain(...args) : GroupBuilder
		{
			var count : int = args.length;
			for(var index : int = 0; index < count; index++)
			{
				var child : DisplayObject = args[index];
				(_instance as DisplayObjectContainer).addChild(child);
			}
			
			return this;
		}
	}
}