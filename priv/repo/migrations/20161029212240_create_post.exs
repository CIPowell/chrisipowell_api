defmodule ChrisipowellApi.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:post) do
      add :title, :string
      add :content, :text
      add :published, :date

      timestamps()
    end

  end
end
