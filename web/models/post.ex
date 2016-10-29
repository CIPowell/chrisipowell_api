defmodule ChrisipowellApi.Post do
  use ChrisipowellApi.Web, :model

  schema "post" do
    field :title, :string
    field :content, :string
    field :published, Ecto.Date

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :content, :published])
    |> validate_required([:title, :content, :published])
  end
end
