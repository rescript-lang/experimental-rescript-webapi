let mediaStream: WebApiMediaCaptureAndStreams.Types.mediaStream = Obj.magic()
let mediaStreamTrack: WebApiMediaCaptureAndStreams.Types.mediaStreamTrack = Obj.magic()

let _make = WebApiMediaCaptureAndStreams.MediaStream.make()

let _fromMediaStream = WebApiMediaCaptureAndStreams.MediaStream.fromMediaStream(mediaStream)

let _fromTracks = WebApiMediaCaptureAndStreams.MediaStream.fromTracks([mediaStreamTrack])
