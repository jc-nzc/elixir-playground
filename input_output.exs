# defmodule Reader do
# 	def run do
# 		"numbers.txt"
# 		|> File.read!()
# 	end
# end
#
# IO.puts(Reader.run())
#
# # defmodule Math do
# #   def sum(a, b) do
# #     a + b
# #   end
# # end
# #
# # IO.puts Math.sum(1, 2)
#
# defmodule Maths do
# 	def sum(a, b) do
# 		a + b
# 	end
# end
#
# IO.puts Maths.sum(234, 23423)
#
# # Causes an error
# # defp do_sum(a, b) do
# # 	a + b
# # end
# #
# # IO.puts Math.do_sum(1, 2)
#
# name = IO.gets "What is your name? "
# age = IO.gets "And what is your age? "
# IO.puts "Hello, #{String.trim(name)}! You're #{String.trim(age)}? That's so old!"


sum = fn (a, b) -> a + b end
IO.puts(sum.(1, 5))

divider = fn (c, d) -> c / d end
IO.puts(divider.(20, 4))

# The "&" operator creates the parameters for the function definition

sum = &(&1 + &2)
IO.puts(sum.(4, 5))

subtract = &(&1 - &2)
IO.puts "Here is my formula" <> " for subtraction"
IO.puts(subtract.(12, 4))

defmodule Arith do
	def subs(a, b) do
		a - b
	end
end

IO.puts("Here is some arithmetic for yahs #{Arith.subs(3, 1)}")

defmodule Donut do
	def bark do
		IO.puts "Woof"
	end
end

IO.puts(Donut.bark())

# defmodule M do
# 	def main do
# 		name = IO.gets("What's your name? ") |> String.trim
# 		IO.puts "Hello #{name}"
# 	end
# end

#c("input_output.exs")
# M.main

defmodule M do
	def main do
		data_stuff()
	end

	def data_stuff do
		IO.puts "Atom #{is_atom(:Atom)}"
		IO.puts "Length of my string is #{String.length("Adam")}"
		IO.puts "Data type of my var is #{is_integer(5)}"
	end
end

# Anonymous Functions
multi = fn a, b -> a * b end
IO.inspect(multi.(5, 5))
IO.inspect(is_function(multi))

signal = fn a, b -> a <> " " <> b end
IO.inspect(signal.("John", "Hopkins"))
IO.inspect(is_function(signal))


reader = File.read!("depth.txt") |> String.split("\n")
IO.inspect reader

if true do
	IO.puts "This worked"
end


# for(i = 0; i < sizeof(array); i++){
# 	array[i] = array[i] * 2;
# }

defmodule Recursion do
  def print_multiple_times(msg, n) when n > 0 do
    IO.puts(msg)
    print_multiple_times(msg, n - 1)
  end

  def print_multiple_times(_msg, 0) do
    :ok
  end
end

Recursion.print_multiple_times("Hello!", 3)

defmodule Math do
	def sum_list([head | tail], accumulator) do
		sum_list(tail, head + accumulator)
	end

	def sum_list([], accumulator) do
		accumulator
	end
end

IO.puts Math.sum_list([1, 2, 3, 18], 0) #=> 24

recursion = Enum.map([1, 2, 3], &(&1 * 2))
IO.inspect recursion
