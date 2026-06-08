type t = GamepadTypes.gamepadHapticActuator = private {...GamepadTypes.gamepadHapticActuator}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/GamepadHapticActuator/playEffect)
*/
@send
external playEffect: (
  t,
  ~type_: GamepadTypes.gamepadHapticEffectType,
  ~params: GamepadTypes.gamepadEffectParameters=?,
) => promise<GamepadTypes.gamepadHapticsResult> = "playEffect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/GamepadHapticActuator/reset)
*/
@send
external reset: t => promise<GamepadTypes.gamepadHapticsResult> =
  "reset"
