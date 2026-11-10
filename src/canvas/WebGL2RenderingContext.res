/** Native writable color-space properties exposed by WebGL2 contexts. */
@set
external setDrawingBufferColorSpace: (
  CanvasTypes.webGL2RenderingContext,
  CanvasTypes.predefinedColorSpace,
) => unit = "drawingBufferColorSpace"

@set
external setUnpackColorSpace: (
  CanvasTypes.webGL2RenderingContext,
  CanvasTypes.predefinedColorSpace,
) => unit = "unpackColorSpace"
