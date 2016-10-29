defmodule ChrisipowellApi.ModelCase do
  use ExUnit.CaseTemplate
  using do
    quote do
      alias ChrisipowellApi.Repo

      import Ecto
      import Ecto.Changeset
      import Ecto.Query, only: [from: 1, from: 2]
      import ChrisipowellApi.ModelCase
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(ChrisipowellApi.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(ChrisipowellApi.Repo, {:shared, self()})
    end

    :ok
  end

  def errors_on(struct, data) do
    struct.__struct__.changeset(struct, data)
    |> Ecto.Changeset.traverse_errors(&ChrisipowellApi.ErrorHelpers.translate_error/1)
    |> Enum.flat_map(fn {key, errors} -> for msg <- errors, do: {key, msg} end)
  end

end
