defmodule Sample.Enum do
  # def fist(list, val \\ nil)
  # def first([head | _]), do: head
  # def first([], val), do: val
  def first(list) do
    if(length(list) == 0) do
      nil
    else
      hd(list)
    end
  end

  def map([], _), do: []
  def map([hd | tl], f) do
    [f.(hd) | map(tl, f)]
  end


  def add(list, val \\ 0) do
    trace(val)
    [val | list]
  end

  defp trace(string) do
    IO.puts("The value passed in was #{string}")

  end

end
