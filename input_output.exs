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
