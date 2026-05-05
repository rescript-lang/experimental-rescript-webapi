let offlineAudioContextOptions: WebAudio.Types.offlineAudioContextOptions = Obj.magic()

let _fromOptions = WebAudio.OfflineAudioContext.fromOptions(offlineAudioContextOptions)

let _fromChannelCountLengthAndSampleRate = WebAudio.OfflineAudioContext.fromChannelCountLengthAndSampleRate(
  ~numberOfChannels=2,
  ~length=1024,
  ~sampleRate=44_100.,
)
