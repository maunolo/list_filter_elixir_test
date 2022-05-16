require Integer

defmodule ListFilter do
  def call(list), do: count_odd_integers(list)

  defp count_odd_integers(list) do
    Enum.count(list, fn string ->
      case Integer.parse(string) do
        {int, _rest} -> if Integer.is_odd(int), do: true, else: false
        :error -> false
      end
    end)
  end
end
