defmodule ChrisipowellApi.AppControllerTest do
  use ChrisipowellApi.ConnCase, async: true

  test "index/2 reponds with Hello world" do
    response = get(build_conn(), "/api")
       |> json_response(200)

    expected = %{ "message" => "Hello World!" }

    assert expected == response
  end

end
