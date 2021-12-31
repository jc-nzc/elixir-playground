defmodule SonarSweep do
  def run do
  	"depth.txt"
		|> File.read!()
		|> String.split("\n")
		|> Enum.map(&Integer.parse/1)
		|> Enum.chunk_every(2, 1, :discard)
		|> Enum.filter(fn [first, second] -> second > first end)
		|> length()
  end
end

IO.puts(SonarSweep.run())
