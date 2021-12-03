# elixir-playground
exercises for elixir lang

iex  
elixir --version  
IO.puts("Hello world from Elixir")  
touch elixir simple.exs  

1          # integer  
0x1F       # integer  
1.0        # float  
true       # boolean  
:atom      # atom / symbol  
"elixir"   # string  
[1, 2, 3]  # list  
{1, 2, 3}  # tuple  

atoms / symbols in other languages
:apple

booleans are atoms
true == :true
is_atom(false)
is_boolean(:false)

Question:
Isn't everything in Elixir immutable?
Should variables then be called constants or something else

variable declaration
life = 42
life = "Hello world"
^ and reassignment

string concatenation
x = "Dark"
y = "Knight"
z = x <> " " <> y

What's the equivalent of 'object_id' in Elixir?
a = "pillow"
a.object_id
205

a = "cloud"
a.object_id
208

IO.puts(String.length("Hello"))
IO.puts(String.reverse("World"))
IO.puts(String.upcase("Hello") <> " " <> String.reverse("World"))

current_process = self()
