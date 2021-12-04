
defmodule TestWith do
	defp extract_login(%{"login" => login}), do: {:ok, login}
	defp extract_login(_), do: {:error, ""}
	def validate_login(input) do
		with {:ok, login} <- extract_login(input) do
			{:ok, login}
		end
	end
end

user = %{"login" => "testand o login"}
IO.puts(TestWith.validate_login(user))