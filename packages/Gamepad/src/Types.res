@@warning("-30")
type gamepadMappingType =
  | @as("standard") Standard
  | @as("xr-standard") XrStandard

type gamepadHapticEffectType =
  | @as("dual-rumble") DualRumble
  | @as("trigger-rumble") TriggerRumble

type gamepadHapticsResult =
  | @as("complete") Complete
  | @as("preempted") Preempted

/**
An individual button of a gamepad or other controller, allowing access to the current state of different types of buttons available on the control device.
[See GamepadButton on MDN](https://developer.mozilla.org/docs/Web/API/GamepadButton)
*/
type gamepadButton = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GamepadButton/pressed)
    */
  pressed: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GamepadButton/touched)
    */
  touched: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GamepadButton/value)
    */
  value: float,
}

/**
This WebApiGamepad API interface represents hardware in the controller designed to provide haptic feedback to the user (if available), most commonly vibration hardware.
[See GamepadHapticActuator on MDN](https://developer.mozilla.org/docs/Web/API/GamepadHapticActuator)
*/
@editor.completeFrom(GamepadHapticActuator)
type gamepadHapticActuator = private {}

/**
This WebApiGamepad API interface defines an individual gamepad or other controller, allowing access to information such as button presses, axis positions, and id.
[See WebApiGamepad on MDN](https://developer.mozilla.org/docs/Web/API/WebApiGamepad)
*/
type gamepad = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiGamepad/id)
    */
  id: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiGamepad/index)
    */
  index: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiGamepad/connected)
    */
  connected: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiGamepad/timestamp)
    */
  timestamp: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiGamepad/mapping)
    */
  mapping: gamepadMappingType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiGamepad/axes)
    */
  axes: array<float>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiGamepad/buttons)
    */
  buttons: array<gamepadButton>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiGamepad/vibrationActuator)
    */
  vibrationActuator: gamepadHapticActuator,
}

type gamepadEffectParameters = {
  mutable duration?: int,
  mutable startDelay?: int,
  mutable strongMagnitude?: float,
  mutable weakMagnitude?: float,
  mutable leftTrigger?: float,
  mutable rightTrigger?: float,
}
