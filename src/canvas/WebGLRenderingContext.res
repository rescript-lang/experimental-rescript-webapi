/** Native writable color-space properties exposed by WebGL contexts. */
@set
external setDrawingBufferColorSpace: (
  CanvasTypes.webGLRenderingContext,
  CanvasTypes.predefinedColorSpace,
) => unit = "drawingBufferColorSpace"

@set
external setUnpackColorSpace: (
  CanvasTypes.webGLRenderingContext,
  CanvasTypes.predefinedColorSpace,
) => unit = "unpackColorSpace"
