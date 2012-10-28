package org.hyzhak.fluid.feathers.binding
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import starling.events.Event;
	import starling.events.EventDispatcher;
	
	public class BindProperty extends starling.events.EventDispatcher
	{
		private var _sender : Object;
		private var _senderPropertyName : String;
		private var _target:Object;
		private var _targetFieldName:String;
		
		internal function set sender(value:Object) : void 
		{
			if(_sender == value)
			{
				return;
			}
			
			_sender = value;
			
			if(_sender is starling.events.EventDispatcher)
			{
				(_sender as starling.events.EventDispatcher).addEventListener(starling.events.Event.CHANGE, onChangeStarling);
			}
			else if(_sender is flash.events.EventDispatcher)
			{
				(_sender as flash.events.EventDispatcher).addEventListener(flash.events.Event.CHANGE, onChangeFlash);				
			}
		}
		
		protected function onChangeFlash(event:flash.events.Event):void
		{
			refreshValue();
		}
		
		private function onChangeStarling(event : starling.events.Event, propertyName : String):void
		{
			if(_senderPropertyName != propertyName)
			{
				return;
			}
			
			refreshValue();
		}
		
		internal function set propertyName(value:String) : void 
		{
			_senderPropertyName = value;
		}
		
		public function bindTo(target : Object, fieldName : String) : void
		{
			_target = target;
			_targetFieldName = fieldName;			
			refreshValue();
		}
		
		private function refreshValue() : void
		{
			_target[_targetFieldName] = _sender[_senderPropertyName];
		}
		
		public function unBind() : void
		{
			
		}
	}
}