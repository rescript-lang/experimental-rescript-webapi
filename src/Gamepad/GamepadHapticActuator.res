/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/GamepadHapticActuator/playEffect)
*/
@send
external playEffect: (
  Types.gamepadHapticActuator,
  ~type_: Types.gamepadHapticEffectType,
  ~params: Types.gamepadEffectParameters=?,
) => promise<Types.gamepadHapticsResult> = "playEffect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/GamepadHapticActuator/reset)
*/
@send
external reset: Types.gamepadHapticActuator => promise<Types.gamepadHapticsResult> = "reset"
