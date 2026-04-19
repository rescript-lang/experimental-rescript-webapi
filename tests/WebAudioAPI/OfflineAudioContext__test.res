let offlineAudioContextOptions: WebApiWebAudio.Types.offlineAudioContextOptions = Obj.magic()

let _fromOptions = WebApiWebAudio.OfflineAudioContext.fromOptions(offlineAudioContextOptions)

let _fromChannelCountLengthAndSampleRate = WebApiWebAudio.OfflineAudioContext.fromChannelCountLengthAndSampleRate(
  ~numberOfChannels=2,
  ~length=1024,
  ~sampleRate=44_100.,
)
