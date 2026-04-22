/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/setValueAtTime)
*/
@send
external setValueAtTime: (Types.audioParam, ~value: float, ~startTime: float) => Types.audioParam =
  "setValueAtTime"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/linearRampToValueAtTime)
*/
@send
external linearRampToValueAtTime: (
  Types.audioParam,
  ~value: float,
  ~endTime: float,
) => Types.audioParam = "linearRampToValueAtTime"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/exponentialRampToValueAtTime)
*/
@send
external exponentialRampToValueAtTime: (
  Types.audioParam,
  ~value: float,
  ~endTime: float,
) => Types.audioParam = "exponentialRampToValueAtTime"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/setTargetAtTime)
*/
@send
external setTargetAtTime: (
  Types.audioParam,
  ~target: float,
  ~startTime: float,
  ~timeConstant: float,
) => Types.audioParam = "setTargetAtTime"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/setValueCurveAtTime)
*/
@send
external setValueCurveAtTime: (
  Types.audioParam,
  ~values: array<float>,
  ~startTime: float,
  ~duration: float,
) => Types.audioParam = "setValueCurveAtTime"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/cancelScheduledValues)
*/
@send
external cancelScheduledValues: (Types.audioParam, float) => Types.audioParam =
  "cancelScheduledValues"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/cancelAndHoldAtTime)
*/
@send
external cancelAndHoldAtTime: (Types.audioParam, float) => Types.audioParam = "cancelAndHoldAtTime"
