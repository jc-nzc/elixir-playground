defmodule ScreenRead do
	def run do
		name = IO.gets("What's your name?" <> "\n")
		|> String.trim
		IO.puts("well hello " <> "#{name}")
	end
end

IO.puts(ScreenRead.run())
