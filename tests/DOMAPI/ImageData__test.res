let imageData = ImageData.makeWithData(~data=Uint8ClampedArray.fromArray([]), ~sw=100, ~sh=100)

(imageData.data :> TypedArray.t<int>)->TypedArray.length->Console.log
