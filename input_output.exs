defmodule Reader do
	def run do
		"numbers.txt"
		|> File.read!()
	end
end

IO.puts(Reader.run())
