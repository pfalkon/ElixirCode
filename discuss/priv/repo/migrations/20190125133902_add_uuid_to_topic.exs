defmodule Discuss.Repo.Migrations.AddUuidToTopic do
  use Ecto.Migration

  def change do
    alter table(:topics) do
      add :uuid, :uuid
    end
  end
end
