fluid-feathers
==============

Fluid interface for declarative description of GUI in FeathersUI also in Starling framework


Examples
========

## Button and Label

```actionscript

//Before

_button = new Button();
_button.label = "Click Me";
_button.addEventListener(Event.TRIGGERED, button_triggeredHandler);
addChild(_button);
_button.validate();
_button.x = (stage.stageWidth - _button.width) / 2;
_button.y = (stage.stageHeight - _button.height) / 2;

var label:Label = new Label();
label.text = "Hello World!";
label.x = 50;
label.y = 50;
addChild(label);

//After

_button = b.newButton()
			.label("Click Me")
			.x(stage.stageWidth / 2)
			.y(stage.stageHeight / 2)
			.onTriggered(button_triggeredHandler)
			.buildAndAddTo(this) as Button;

b.newLabel()
	.text("Hello World!")
	.x(50)
	.y(50)
	.buildAndAddTo(this);

```