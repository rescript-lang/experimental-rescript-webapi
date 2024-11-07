open GamepadAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/GamepadHapticActuator/playEffect)
*/
@send
external playEffect: (
  gamepadHapticActuator,
  ~type_: gamepadHapticEffectType,
  ~params: gamepadEffectParameters,
) => Promise.t<gamepadHapticsResult> = "playEffect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/GamepadHapticActuator/reset)
*/
@send
external reset: gamepadHapticActuator => Promise.t<gamepadHapticsResult> = "reset"
