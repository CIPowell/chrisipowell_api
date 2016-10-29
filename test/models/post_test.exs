defmodule ChrisipowellApi.PostTest do
  use ChrisipowellApi.ModelCase

  alias ChrisipowellApi.Post

  @valid_attrs %{content: "some content", published: %{day: 17, month: 4, year: 2010}, title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Post.changeset(%Post{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Post.changeset(%Post{}, @invalid_attrs)
    refute changeset.valid?
  end
end
