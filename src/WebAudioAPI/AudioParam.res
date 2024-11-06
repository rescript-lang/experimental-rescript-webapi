@@warning("-44")
@@warning("-33")
open WebAudioAPI

module AudioParam = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/setValueAtTime)
    */
  @send
  external setValueAtTime: (audioParam, float, float) => audioParam = "setValueAtTime"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/linearRampToValueAtTime)
    */
  @send
  external linearRampToValueAtTime: (audioParam, float, float) => audioParam =
    "linearRampToValueAtTime"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/exponentialRampToValueAtTime)
    */
  @send
  external exponentialRampToValueAtTime: (audioParam, float, float) => audioParam =
    "exponentialRampToValueAtTime"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/setTargetAtTime)
    */
  @send
  external setTargetAtTime: (audioParam, float, float, float) => audioParam = "setTargetAtTime"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/setValueCurveAtTime)
    */
  @send
  external setValueCurveAtTime: (audioParam, array<float>, float, float) => audioParam =
    "setValueCurveAtTime"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/cancelScheduledValues)
    */
  @send
  external cancelScheduledValues: (audioParam, float) => audioParam = "cancelScheduledValues"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioParam/cancelAndHoldAtTime)
    */
  @send
  external cancelAndHoldAtTime: (audioParam, float) => audioParam = "cancelAndHoldAtTime"
}
