require Integer

defmodule ListFilter do
  def call(list) do
    list
    |> Enum.count(fn string -> is_string_odd_integer(string) end)
  end

  defp is_string_odd_integer(string) do
    string
    |> Integer.parse()
    |> handle_string()
  end

  defp handle_string({int, _rest}), do: Integer.is_odd(int)
  defp handle_string(:error), do: false
end
