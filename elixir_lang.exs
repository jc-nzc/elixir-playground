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

# Soft Exit -> System.halt

defmodule M do
	def main do
		name = IO.gets("What's your name? ")
		|> String.trim

		IO.puts "Hello #{name}"
		data_stuff()
	end

	def data_stuff do
		my_int = 123
		IO.puts "Integer is #{is_integer(my_int)}"

		my_float = 3.14159
		IO.puts "Float #{is_float(my_float)}"

		IO.puts "Symbol/Atom is #{is_atom(:Pittsburgh)}"

		:"NewYork"

		# h trunc/1

		# one_to_10 = 1..10

		add = fn a, b -> a + b end

		IO.puts add.(1, 2)
		IO.puts add.(4, 77)
		IO.puts add.(73892, 2384829)

		IO.puts is_function(add)

		subtract = fn a, b -> a - b end
		IO.puts subtract.(4, 3)
		IO.puts is_function(subtract)

		sum = &(&1 + &2)
		IO.inspect sum.(1, 2)

		# f = fn
		# 	x, y when x > 0 -> x + y
		# 	x, y -> x * y
		# end
		#
		# IO.inspect f.(1, 3)
		resp = IO.gets("yes or no?")
		IO.puts resp


	end

 def name_std_process do
 	name_input = IO.gets("What's your name? ")
	|> String.trim
	|> String.upcase
	|> String.reverse
	IO.puts "Hello #{name_input <> " " <> "OK Computer"}"
 end

end
