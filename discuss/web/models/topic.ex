defmodule Discuss.Topic do
  use Discuss.Web, :model

  schema "topics" do
    field :title, :string
    field :uuid, :binary_id
  end

  def changset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :uuid])
    |> validate_required([:title])
  end
end
