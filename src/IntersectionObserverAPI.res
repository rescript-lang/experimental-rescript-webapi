@@warning("-30")

open DOMAPI

/**
provides a way to asynchronously observe changes in the intersection of a target element with an ancestor element or with a top-level document's viewport.
[See IntersectionObserver on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver)
*/
@editor.completeFrom(IntersectionObserver)
type intersectionObserver = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/root)
    */
  root: Null.t<unknown>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/rootMargin)
    */
  rootMargin: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/thresholds)
    */
  thresholds: array<float>,
}

/**
This Intersection Observer API interface describes the intersection between the target element and its root container at a specific moment of transition.
[See IntersectionObserverEntry on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry)
*/
type intersectionObserverEntry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry/time)
    */
  time: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry/rootBounds)
    */
  rootBounds: Null.t<domRectReadOnly>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry/boundingClientRect)
    */
  boundingClientRect: domRectReadOnly,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry/intersectionRect)
    */
  intersectionRect: domRectReadOnly,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry/isIntersecting)
    */
  isIntersecting: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry/intersectionRatio)
    */
  intersectionRatio: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry/target)
    */
  target: element,
}

type intersectionObserverInit = {
  mutable root?: Null.t<unknown>,
  mutable rootMargin?: string,
  mutable threshold?: array<float>,
}

type intersectionObserverCallback = (array<intersectionObserverEntry>, intersectionObserver) => unit
