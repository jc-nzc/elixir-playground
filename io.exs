{:ok, file} = File.open("hello", [:write])
IO.binwrite(file, "world")
File.close(file)
read_file = File.read("hello")
IO.inspect(read_file)
# IO.inspect(File.read("hello"))

# Answer: Use IO.inspect for a tuple instead of IO.puts for a string
# What may be happening is that you are getting a JSON response out from the get_response() function, and later on treat it as a string, while it is Map.
# I usually get this error message when I try to use IO.puts instead of IO.inspect to print something out to console that is not a string.
# https://elixirforum.com/t/protocol-string-chars-not-implemented-for/511/2
