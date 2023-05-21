defmodule Servy.Handler do
  def handle(request) do
    request
    |> parse()
    |> route()
    |> format_response()
  end


  def parse(request) do
    conv = %{ method: "GET", path: "/wildtings", resp_body: ""}
  end

  def route(request) do
    conv = %{ method: "GET", path: "/wildtings", resp_body: "Bears, Lions, Tigers"}
  end

  def format_response(request) do
    """
    HTTP/1.1 200 OK
    Content-Type: text/html
    Content-Length: 20

    Bears, Lions, Tigers
    """
  end
end


request = """
GET /wildtings HTTP/1.1
Host: example.com
User-Agent: ExampleBrowser/1.0
Accept: */*

"""

response = Servy.Handler.handle(request)

IO.puts(response)
