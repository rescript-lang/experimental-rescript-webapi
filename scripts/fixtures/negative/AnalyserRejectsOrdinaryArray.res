let context = WebAPI.OfflineAudioContext.fromChannelCountLengthAndSampleRate(
  ~numberOfChannels=1,
  ~length=128,
  ~sampleRate=44100.,
)
let analyser = context->WebAPI.OfflineAudioContext.createAnalyser
analyser->WebAPI.AnalyserNode.getFloatTimeDomainData([0., 0.])
