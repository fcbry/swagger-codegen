# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule SwaggerPetstore.Api.User do
  @moduledoc """
  API calls for all endpoints tagged `User`.
  """

  alias SwaggerPetstore.Connection
  import SwaggerPetstore.RequestBuilder


  @doc """
  Create user
  This can only be done by the logged in user.

  ## Parameters

  - connection (`SwaggerPetstore.Connection`): Connection to server
  - body (`User`): Created user object
  - opts (`KeywordList`): [optional] Optional parameters

  ## Returns

  `{:ok, %{}}` on success
  `{:error, info}` on failure
  """
  @spec create_user(Tesla.Env.client, SwaggerPetstore.Model.User.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def create_user(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/user")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Creates list of users with given input array
  

  ## Parameters

  - connection (`SwaggerPetstore.Connection`): Connection to server
  - body (`[SwaggerPetstore.Model.User.t()]`): List of user object
  - opts (`KeywordList`): [optional] Optional parameters

  ## Returns

  `{:ok, %{}}` on success
  `{:error, info}` on failure
  """
  @spec create_users_with_array_input(Tesla.Env.client, list(SwaggerPetstore.Model.User.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def create_users_with_array_input(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/user/createWithArray")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Creates list of users with given input array
  

  ## Parameters

  - connection (`SwaggerPetstore.Connection`): Connection to server
  - body (`[SwaggerPetstore.Model.User.t()]`): List of user object
  - opts (`KeywordList`): [optional] Optional parameters

  ## Returns

  `{:ok, %{}}` on success
  `{:error, info}` on failure
  """
  @spec create_users_with_list_input(Tesla.Env.client, list(SwaggerPetstore.Model.User.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def create_users_with_list_input(connection, body, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/user/createWithList")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Delete user
  This can only be done by the logged in user.

  ## Parameters

  - connection (`SwaggerPetstore.Connection`): Connection to server
  - username (`String.t`): The name that needs to be deleted
  - opts (`KeywordList`): [optional] Optional parameters

  ## Returns

  `{:ok, %{}}` on success
  `{:error, info}` on failure
  """
  @spec delete_user(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def delete_user(connection, username, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/user/#{username}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Get user by user name
  

  ## Parameters

  - connection (`SwaggerPetstore.Connection`): Connection to server
  - username (`String.t`): The name that needs to be fetched. Use user1 for testing.
  - opts (`KeywordList`): [optional] Optional parameters

  ## Returns

  `{:ok, SwaggerPetstore.Model.User}` on success
  `{:error, info}` on failure
  """
  @spec get_user_by_name(Tesla.Env.client, String.t, keyword()) :: {:ok, SwaggerPetstore.Model.User.t} | {:error, Tesla.Env.t}
  def get_user_by_name(connection, username, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/user/#{username}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%SwaggerPetstore.Model.User{})
  end

  @doc """
  Logs user into the system
  

  ## Parameters

  - connection (`SwaggerPetstore.Connection`): Connection to server
  - username (`String.t`): The user name for login
  - password (`String.t`): The password for login in clear text
  - opts (`KeywordList`): [optional] Optional parameters

  ## Returns

  `{:ok, String.t}` on success
  `{:error, info}` on failure
  """
  @spec login_user(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def login_user(connection, username, password, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/user/login")
    |> add_param(:query, :"username", username)
    |> add_param(:query, :"password", password)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Logs out current logged in user session
  

  ## Parameters

  - connection (`SwaggerPetstore.Connection`): Connection to server
  - opts (`KeywordList`): [optional] Optional parameters

  ## Returns

  `{:ok, %{}}` on success
  `{:error, info}` on failure
  """
  @spec logout_user(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def logout_user(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/user/logout")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Updated user
  This can only be done by the logged in user.

  ## Parameters

  - connection (`SwaggerPetstore.Connection`): Connection to server
  - username (`String.t`): name that need to be deleted
  - body (`User`): Updated user object
  - opts (`KeywordList`): [optional] Optional parameters

  ## Returns

  `{:ok, %{}}` on success
  `{:error, info}` on failure
  """
  @spec update_user(Tesla.Env.client, String.t, SwaggerPetstore.Model.User.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def update_user(connection, username, body, _opts \\ []) do
    %{}
    |> method(:put)
    |> url("/user/#{username}")
    |> add_param(:body, :"body", body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
