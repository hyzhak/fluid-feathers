package org.hyzhak.fluid.feathers
{
	import feathers.display.Image;
	
	import starling.textures.Texture;

	public class FeatherImageBuilder extends DisplayObjectBuilder
	{
		final internal function initNewInstance(texture : Texture ) : FeatherImageBuilder
		{
			_instance = new Image(texture);
			return this;
		}
	}
}