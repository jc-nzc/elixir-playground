#IO.puts raise "error"

IO.inspect round(3.58)
#expeecting 4
IO.inspect trunc(3.58)
#expecting 3

IO.inspect div(10,2)

IO.inspect div 10,4

IO.inspect rem 10, 3

IO.puts 0b1010

IO.puts 0x1F

# Alias example
IO.puts is_atom(Hello)

defmodule M do
	def main do
		name = IO.gets("What's your name? ")
		|> String.trim

		IO.puts "Hello #{name}"
		# data_stuff()
	end
end
