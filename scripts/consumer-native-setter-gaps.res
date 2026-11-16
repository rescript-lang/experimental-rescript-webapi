let setMediaTrack = (track: WebAPI.MediaStreamTrack.t) => {
  track->WebAPI.MediaStreamTrack.setEnabled(true)
  track->WebAPI.MediaStreamTrack.setContentHint("motion")
}

let setUtterance = utterance => {
  utterance->WebAPI.SpeechSynthesisUtterance.setText("hello")
  utterance->WebAPI.SpeechSynthesisUtterance.setLang("en")
  utterance->WebAPI.SpeechSynthesisUtterance.setVolume(1.)
  utterance->WebAPI.SpeechSynthesisUtterance.setRate(1.)
  utterance->WebAPI.SpeechSynthesisUtterance.setPitch(1.)
}

let setTextTrack = (track, cue) => {
  track->WebAPI.TextTrack.setTextTrackMode(track.mode)
  cue->WebAPI.TextTrack.setCueId(cue.id)
  cue->WebAPI.TextTrack.setCueStartTime(cue.startTime)
  cue->WebAPI.TextTrack.setCueEndTime(cue.endTime)
  cue->WebAPI.TextTrack.setCuePauseOnExit(cue.pauseOnExit)
}

let setGeometry = (
  point: WebAPI.DOMPoint.t,
  rect: WebAPI.DOMRect.t,
  matrix: WebAPI.DOMMatrix.t,
) => {
  point->WebAPI.DOMPoint.setX(point.x)
  point->WebAPI.DOMPoint.setY(point.y)
  point->WebAPI.DOMPoint.setZ(point.z)
  point->WebAPI.DOMPoint.setW(point.w)
  rect->WebAPI.DOMRect.setX(rect.x)
  rect->WebAPI.DOMRect.setY(rect.y)
  rect->WebAPI.DOMRect.setWidth(rect.width)
  rect->WebAPI.DOMRect.setHeight(rect.height)
  matrix->WebAPI.DOMMatrix.setA(matrix.a)
  matrix->WebAPI.DOMMatrix.setB(matrix.b)
  matrix->WebAPI.DOMMatrix.setC(matrix.c)
  matrix->WebAPI.DOMMatrix.setD(matrix.d)
  matrix->WebAPI.DOMMatrix.setE(matrix.e)
  matrix->WebAPI.DOMMatrix.setF(matrix.f)
  matrix->WebAPI.DOMMatrix.setM13(matrix.m13)
}

let setNodes = (
  attr: WebAPI.Attr.t,
  cdata: WebAPI.CDATASection.t,
  instruction: WebAPI.ProcessingInstruction.t,
) => {
  attr->WebAPI.Attr.setNodeValue(Null.Value("value"))
  attr->WebAPI.Attr.setTextContent(Null.Value("text"))
  cdata->WebAPI.CDATASection.setData("data")
  cdata->WebAPI.CDATASection.setNodeValue(Null.Value("node"))
  instruction->WebAPI.ProcessingInstruction.setData("data")
  instruction->WebAPI.ProcessingInstruction.setTextContent(Null.Value("text"))
}

let _ = (setMediaTrack, setUtterance, setTextTrack, setGeometry, setNodes)
