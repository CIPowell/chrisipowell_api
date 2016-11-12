defmodule ChrisipowellApi.AppControllerTest do
  use ChrisipowellApi.ConnCase, async: true

  test "index/2 reponds with Hello world" do
    response = get(build_conn(), "/")
       |> json_response(200)

    expected = %{ "application" => "chrisipowell_api", "version" => "0.2.0" }

    assert expected == response
  end

end
