defmodule Discuss.TopicController do
  use Discuss.Web, :controller

  alias Discuss.Topic

  def new(conn, _params) do
    changeset = Topic.changset(%Topic{}, %{})

    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"topic" => topic}) do
    changeset = Topic.changset(%Topic{}, topic)

    case Repo.insert(changeset) do
      {:ok, _post} ->
        render conn, "new.html", changeset: Topic.changset(%Topic{}, %{})
      {:error, changeset} ->
        render conn, "new.html", changeset: changeset
    end
  end
end
