let createSvgElement = (document: DOM.document) =>
  document->Document.createElementNS(~namespace="http://www.w3.org/2000/svg", ~qualifiedName="svg")
