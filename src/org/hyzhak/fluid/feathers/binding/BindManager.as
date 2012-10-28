package org.hyzhak.fluid.feathers.binding
{
	
	

	public class BindManager
	{
		private static var _tool : Array = [];
		
		public static function bind(sender : Object, propertyName : String) : *
		{
			var property : BindProperty = new BindProperty();
			property.sender = sender;
			property.propertyName = propertyName;
			_tool.push(property);
			return property;
		}
		
		public static function setProperty(target:Object, targetPropertyName : String, value:Object):void
		{
			if(value is BindProperty)
			{
				(value as BindProperty).bindTo(target, targetPropertyName);
			}
			else if(value is String)
			{
				target[targetPropertyName] = value;				
			}
		}
	}
}