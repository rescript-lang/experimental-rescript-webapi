let mediaStream: MediaCaptureAndStreams.Types.mediaStream = Obj.magic()
let mediaStreamTrack: MediaCaptureAndStreams.Types.mediaStreamTrack = Obj.magic()

let _make = MediaCaptureAndStreams.MediaStream.make()

let _fromMediaStream = MediaCaptureAndStreams.MediaStream.fromMediaStream(mediaStream)

let _fromTracks = MediaCaptureAndStreams.MediaStream.fromTracks([mediaStreamTrack])
