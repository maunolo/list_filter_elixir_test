require Integer

defmodule ListFilter do
  def call(list) do
    list
    |> Enum.count(&is_string_odd_integer/1)
  end

  defp is_string_odd_integer(string) do
    string
    |> Integer.parse()
    |> handle_string()
  end

  defp handle_string({int, _rest}), do: Integer.is_odd(int)
  defp handle_string(:error), do: false
end
