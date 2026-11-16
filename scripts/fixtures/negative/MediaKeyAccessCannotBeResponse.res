let forged: promise<WebAPI.Response.t> = WebAPI.Navigator.requestMediaKeySystemAccess(
  WebAPI.Window.current->WebAPI.Window.navigator,
  ~keySystem="example",
  ~supportedConfigurations=[],
)
