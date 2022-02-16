# #IO.puts raise "error"
#
# IO.inspect round(3.58)
# #expeecting 4
# IO.inspect trunc(3.58)
# #expecting 3
#
# IO.inspect div(10,2)
#
# IO.inspect div 10,4
#
# IO.inspect rem 10, 3
#
# IO.puts 0b1010
#
# IO.puts 0x1F
#
# # Alias example
# IO.puts is_atom(Hello)

# iex
# c("elixir_lang.exs")
# M.main

defmodule M do
	def main do
		name = IO.gets("What's your name? ")
		|> String.trim

		IO.puts "Hello #{name}"
		data_stuff()
	end

	def data_stuff do
		my_int = 123
		IO.puts "Intger is #{is_integer(my_int)}"

		my_float = 3.14159
		IO.puts "Float #{is_float(my_float)}"
	end

end
