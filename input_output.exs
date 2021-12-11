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

defmodule PipePlay do
	def perform do
    IO.puts "Sanity Check"
	end
end

PipePlay.perform()
