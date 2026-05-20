@@warning("-30")

type node
type htmlElement
type nodeList<'tNode>
type domImplementation
type documentType
type element = Base__Element.element
type domStringList = {
  /**
    Returns the number of strings in strings.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMStringList/length)
    */
  length: int,
}

/**
The location (WebApiURL) of the object it is linked to. Changes done on it are reflected on the object it relates to. Both the Document and Window interface have such a linked Location, accessible via Document.location and Window.location respectively.
[See Location on MDN](https://developer.mozilla.org/docs/Web/API/Location)
TODO: mark as private once mutating fields of private records is allowed
*/
@editor.completeFrom(Location)
type location = {
  /**
    Returns the Location object's URL.

Can be set, to navigate to the given URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/href)
    */
  mutable href: string,
  /**
    Returns the Location object's WebApiURL's origin.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/origin)
    */
  origin: string,
  /**
    Returns the Location object's WebApiURL's scheme.

Can be set, to navigate to the same WebApiURL with a changed scheme.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/protocol)
    */
  mutable protocol: string,
  /**
    Returns the Location object's WebApiURL's host and port (if different from the default port for the scheme).

Can be set, to navigate to the same WebApiURL with a changed host and port.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/host)
    */
  mutable host: string,
  /**
    Returns the Location object's WebApiURL's host.

Can be set, to navigate to the same WebApiURL with a changed host.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/hostname)
    */
  mutable hostname: string,
  /**
    Returns the Location object's WebApiURL's port.

Can be set, to navigate to the same WebApiURL with a changed port.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/port)
    */
  mutable port: string,
  /**
    Returns the Location object's WebApiURL's path.

Can be set, to navigate to the same WebApiURL with a changed path.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/pathname)
    */
  mutable pathname: string,
  /**
    Returns the Location object's WebApiURL's query (includes leading "?" if non-empty).

Can be set, to navigate to the same WebApiURL with a changed query (ignores leading "?").
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/search)
    */
  mutable search: string,
  /**
    Returns the Location object's WebApiURL's fragment (includes leading "#" if non-empty).

Can be set, to navigate to the same WebApiURL with a changed fragment (ignores leading "#").
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/hash)
    */
  mutable hash: string,
  /**
    Returns a DOMStringList object listing the origins of the ancestor browsing contexts, from the parent browsing context to the top-level browsing context.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Location/ancestorOrigins)
    */
  ancestorOrigins: domStringList,
}
type documentReadyState
type htmlHeadElement
type htmlCollection<'t>
type htmlImageElement
type htmlEmbedElement
type htmlFormElement
type htmlScriptElement
type window
type documentVisibilityState
type fragmentDirective
type documentTimeline
type styleSheetList
type cssStyleSheet

/**
Any web page loaded in the browser and serves as an entry point into the web page's content, which is the WebApiDOM tree.
[See Document on MDN](https://developer.mozilla.org/docs/Web/API/Document)
TODO: mark as private once mutating fields of private records is allowed
*/
@editor.completeFrom(DOM.Document)
type rec document = {
  // Base properties from Nodea
  /**
    Returns the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeType)
    */
  nodeType: int,
  /**
    Returns a string appropriate for the type of node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeName)
    */
  nodeName: string,
  /**
    Returns node's node document's document base URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/baseURI)
    */
  baseURI: string,
  /**
    Returns true if node is connected and false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/isConnected)
    */
  isConnected: bool,
  /**
    Returns the node document. Returns null for documents.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/ownerDocument)
    */
  ownerDocument: Null.t<document>,
  /**
    Returns the parent.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentNode)
    */
  parentNode: Null.t<node>,
  /**
    Returns the parent element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/parentElement)
    */
  parentElement: Null.t<htmlElement>,
  /**
    Returns the children.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/childNodes)
    */
  childNodes: nodeList<node>,
  /**
    Returns the first child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/firstChild)
    */
  firstChild: Null.t<node>,
  /**
    Returns the last child.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/lastChild)
    */
  lastChild: Null.t<node>,
  /**
    Returns the previous sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/previousSibling)
    */
  previousSibling: Null.t<node>,
  /**
    Returns the next sibling.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nextSibling)
    */
  nextSibling: Null.t<node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/nodeValue)
    */
  mutable nodeValue: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Node/textContent)
    */
  mutable textContent: Null.t<string>,
  // End base properties from Node

  /**
    Gets the implementation object of the current document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/implementation)
    */
  implementation: domImplementation,
  /**
    Sets or gets the URL for the current document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/URL)
    */
  @as("URL")
  url: string,
  /**
    Returns document's URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/documentURI)
    */
  documentURI: string,
  /**
    Gets a value that indicates whether standards-compliant mode is switched on for the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/compatMode)
    */
  compatMode: string,
  /**
    Returns document's encoding.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/characterSet)
    */
  characterSet: string,
  /**
    Returns document's content type.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/contentType)
    */
  contentType: string,
  /**
    Gets an object representing the document type declaration associated with the current document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/doctype)
    */
  doctype: Null.t<documentType>,
  /**
    Gets a reference to the root node of the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/documentElement)
    */
  documentElement: htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/scrollingElement)
    */
  scrollingElement: Null.t<element>,
  /**
    Returns true if document has the ability to display elements fullscreen and fullscreen is supported, or false otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/fullscreenEnabled)
    */
  fullscreenEnabled: bool,
  /**
    Contains information about the current URL.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/location)
    */
  mutable location: location,
  /**
    Gets the WebApiURL of the location that referred the user to the current page.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/referrer)
    */
  referrer: string,
  /**
    Returns the HTTP cookies that apply to the Document. If there are no cookies or cookies can't be applied to this resource, the empty string will be returned.

Can be set, to add a new cookie to the element's set of HTTP cookies.

If the contents are sandboxed into a unique origin (e.g. in an iframe with the sandbox attribute), a "SecurityError" DOMException will be thrown on getting and setting.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/cookie)
    */
  mutable cookie: string,
  /**
    Gets the date that the page was last modified, if the page supplies one.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/lastModified)
    */
  lastModified: string,
  /**
    Retrieves a value that indicates the current state of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/readyState)
    */
  readyState: documentReadyState,
  /**
    Contains the title of the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/title)
    */
  mutable title: string,
  /**
    Sets or retrieves a value that indicates the reading order of the object.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/dir)
    */
  mutable dir: string,
  /**
    Specifies the beginning and end of the document body.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/body)
    */
  mutable body: htmlElement,
  /**
    Returns the head element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/head)
    */
  head: htmlHeadElement,
  /**
    Retrieves a collection, in source order, of img objects in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/images)
    */
  images: htmlCollection<htmlImageElement>,
  /**
    Retrieves a collection of all embed objects in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/embeds)
    */
  embeds: htmlCollection<htmlEmbedElement>,
  /**
    Return an HTMLCollection of the embed elements in the Document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/plugins)
    */
  plugins: htmlCollection<htmlEmbedElement>,
  /**
    Retrieves a collection of all a objects that specify the href property and all area objects in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/links)
    */
  links: htmlCollection<element>,
  /**
    Retrieves a collection, in source order, of all form objects in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/forms)
    */
  forms: htmlCollection<htmlFormElement>,
  /**
    Retrieves a collection of all script objects in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/scripts)
    */
  scripts: htmlCollection<htmlScriptElement>,
  /**
    Returns the script element, or the SVG script element, that is currently executing, as long as the element represents a classic script. In the case of reentrant script execution, returns the one that most recently started executing amongst those that have not yet finished executing.

Returns null if the Document is not currently executing a script or SVG script element (e.g., because the running script is an event handler, or a timeout), or if the currently executing script or SVG script element represents a module script.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/currentScript)
    */
  currentScript: Null.t<htmlElement>,
  /**
    Returns the Window object of the active document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/defaultView)
    */
  defaultView: Null.t<window>,
  /**
    Sets or gets a value that indicates whether the document can be edited.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/designMode)
    */
  mutable designMode: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/hidden)
    */
  hidden: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/visibilityState)
    */
  visibilityState: documentVisibilityState,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/pictureInPictureEnabled)
    */
  pictureInPictureEnabled: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/fragmentDirective)
    */
  fragmentDirective: fragmentDirective,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/timeline)
    */
  timeline: documentTimeline,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/fonts)
    */
  fonts: BaseCSSFontLoading.fontFaceSet,
  /**
    Retrieves a collection of styleSheet objects representing the style sheets that correspond to each instance of a link or style object in the document.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/styleSheets)
    */
  styleSheets: styleSheetList,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/adoptedStyleSheets)
    */
  mutable adoptedStyleSheets: array<cssStyleSheet>,
  /**
    Returns document's fullscreen element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/fullscreenElement)
    */
  fullscreenElement: Null.t<element>,
  /**
    Returns the deepest element in the document through which or to which key events are being routed. This is, roughly speaking, the focused element in the document.

For the purposes of this API, when a child browsing context is focused, its container is focused in the parent browsing context. For example, if the user moves the focus to a text control in an iframe, the iframe is the element returned by the activeElement API in the iframe's node document.

Similarly, when the focused element is in a different node tree than documentOrShadowRoot, the element returned will be the host that's located in the same node tree as documentOrShadowRoot if documentOrShadowRoot is a shadow-including inclusive ancestor of the focused element, and null if not.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/activeElement)
    */
  activeElement: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/pictureInPictureElement)
    */
  pictureInPictureElement: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/pointerLockElement)
    */
  pointerLockElement: Null.t<element>,
  /**
    Returns the child elements.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/children)
    */
  children: htmlCollection<element>,
  /**
    Returns the first child that is an element, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/firstElementChild)
    */
  firstElementChild: Null.t<element>,
  /**
    Returns the last child that is an element, and null otherwise.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/lastElementChild)
    */
  lastElementChild: Null.t<element>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/childElementCount)
    */
  childElementCount: int,
}
