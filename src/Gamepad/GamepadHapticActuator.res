@@warning("-44")
@@warning("-33")
open Gamepad

module GamepadHapticActuator = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GamepadHapticActuator/playEffect)
    */
  @send
  external playEffect: (
    gamepadHapticActuator,
    gamepadHapticEffectType,
    gamepadEffectParameters,
  ) => Promise.t<gamepadHapticsResult> = "playEffect"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GamepadHapticActuator/reset)
    */
  @send
  external reset: gamepadHapticActuator => Promise.t<gamepadHapticsResult> = "reset"
}
