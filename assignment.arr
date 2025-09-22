import file("lab2-support.arr") as support

# encryptor 1 iterates string 5 times
"encryptor 1"
support.encryptor1("HELLO")
support.encryptor1("WORLD")

# encryptor 2 removes the last character of string
"encryptor 2"
support.encryptor2("HELLO")
support.encryptor2("WORLD")

# encryptor 3 doesn't change anything
"encryptor 3"
support.encryptor3("HELLO")
support.encryptor3("WORLD")

# encryptor 4 removes the last character of string and iterates it 5 times
"encryptor 4"
support.encryptor4("HELLO")
support.encryptor4("WORLD")

# encryptor 5 replaces the letter A with B, E with F, I with J, O with P, and U with V
"encryptor 5"
support.encryptor5("HELLO")
support.encryptor5("WORLD")
support.encryptor5("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

# encryptor 6 removes the letter R and converts all strings to lowercase
"encryptor 6"
support.encryptor6("HELLO")
support.encryptor6("WORLD")
support.encryptor6("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

# encryptor 7 prints the string's length
"encryptor 7"
support.encryptor7("HELLO")
support.encryptor7("WORLD")
support.encryptor7("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

# encryptor 8 iterates the string three times and adds three exclamation marks before each iteration
"encryptor 8"
support.encryptor8("HELLO")
support.encryptor8("WORLD")

# encryptor 9 prints the ASCII value of the string's first character
"encryptor 9"
support.encryptor9("a")
support.encryptor9("A")
support.encryptor9("abc")
support.encryptor9("Abc")

# encryptor 10 converts the string into lowercase, it replaces a with b and removes the letter r, it iterates the first 4 letters of the string and iterates this 5 times
"encryptor 10"
support.encryptor10("ABCDEFEFEFEFE")
support.encryptor10("FGHI")
support.encryptor10("KLMN")
support.encryptor10("PQRST")
support.encryptor10("WXYZ")

# my encryptor 1 
"my encryptor 1"
fun my-encryptor1(str1 :: String) -> String:
  (str1) + (str1)
end


#| my encryptor 2 
"my encryptor 2"
fun my-encryptor1(str2 :: String) -> String:
  (str1 str1)
end

# my encryptor 2 
"my encryptor 2"
fun my-encryptor1(str2 :: String) -> String:
  (str1 str1)
end

# my encryptor 3 
"my encryptor 3"
fun my-encryptor1(str3 :: String) -> String:
  (str1 str1)
end

# my encryptor 4 
"my encryptor 4"
fun my-encryptor1(str2 :: String) -> String:
  (str1 str1)
   end |#