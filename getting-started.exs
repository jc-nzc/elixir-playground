defmodule ScreenRead do
	def run do
		random_string = IO.gets("print some type of string... just do it!")
		|> String.trim
		IO.puts(random_string)
	end
end

IO.puts(ScreenRead.run())
