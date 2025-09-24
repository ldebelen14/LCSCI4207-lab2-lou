import file("lab2-support.arr") as support

# TESTING HOW THE GIVEN ENCRYPTORS WORK (by using various inputs)
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
support.encryptor5("abcdefghijklmnopqstuvwxyz")

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

# encryptor 8 iterates the string three times, including three exclamation marks after the string
"encryptor 8"
support.encryptor8("HELLO")
support.encryptor8("WORLD")

# encryptor 9 prints the ASCII value of the string's first character
"encryptor 9"
support.encryptor9("a")
support.encryptor9("A")
support.encryptor9("abc")
support.encryptor9("Abc")

# encryptor 10 converts the string into lowercase, it replaces a with b and removes the letter r, it iterates the first 4 letters of the string 5 times
"encryptor 10"
support.encryptor10("ABCDEFEFEFEFE")
support.encryptor10("FGHI")
support.encryptor10("KLMN")
support.encryptor10("PQRST")
support.encryptor10("WXYZ")

# MY ENCRYPTORS (each encryptor will be tested using the where expression with the capitalised alphabet as the function input, i wasn't able to get the test encryptor to work so i used my own)

fun my-encryptor1(str1 :: String) -> String:
  str1 + str1 # used the addition opertor to iterate string
where:
  my-encryptor1("ABCDEFGHIJKLMNOPQRSTUVWXYZ") is ("ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ")
end

fun my-encryptor2(str2 :: String) -> String:
  string-substring(str2, 0, string-length(str2) - 1)
  # used substring function to remove string's final character
where:
  my-encryptor2("ABCDEFGHIJKLMNOPQRSTUVWXYZ") is ("ABCDEFGHIJKLMNOPQRSTUVWXY")
end

fun my-encryptor3(str3 :: String) -> String:
  str3
where:
  my-encryptor3("ABCDEFGHIJKLMNOPQRSTUVWXYZ") is ("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
end

# i think there's probably a more efficient way of doing this but i struggled with iteration on pyret
fun my-encryptor4(str4 :: String) -> String:
  (string-substring(str4, 0, string-length(str4) - 1)) + (string-substring(str4, 0, string-length(str4) - 1)) + (string-substring(str4, 0, string-length(str4) - 1)) + (string-substring(str4, 0, string-length(str4) - 1)) + (string-substring(str4, 0, string-length(str4) - 1))
where:
  my-encryptor4("ABCDEFGHIJKLMNOPQRSTUVWXYZ") is ("ABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXYABCDEFGHIJKLMNOPQRSTUVWXY")
end

fun my-encryptor5(str5 :: String) -> String:
  string-replace(
    string-replace(
      string-replace(
        string-replace(
          string-replace(
            string-replace(
              string-replace(
                string-replace(
                  string-replace(
                    string-replace(str5, "A", "B"),
                    "a", "b"),
                  "E", "F"),
                "e", "f"),
              "I", "J"),
            "i", "j"),
          "O", "P"),
        "o", "p"),
      "U", "V"),
    "u", "v") # used string-replace function to swap each previously indicated character
where:
  my-encryptor5("ABCDEFGHIJKLMNOPQRSTUVWXYZ") is ("BBCDFFGHJJKLMNPPQRSTVVWXYZ")
  my-encryptor5("abcdefghijklmnopqstuvwxyz") is ("bbcdffghjjklmnppqstvvwxyz")
end

fun my-encryptor6(str6 :: String) -> String:
  string-replace((string-to-lower(str6)),"r", "")
  # used string-to-lower function to decapitalise everything
where:
  my-encryptor6("ABCDEFGHIJKLMNOPQRSTUVWXYZ") is ("abcdefghijklmnopqstuvwxyz")
end

fun my-encryptor7(str7 :: String) -> Number:
  string-length(str7) # string-length retrieves length of a string
where:
  my-encryptor7("ABCDEFGHIJKLMNOPQRSTUVWXYZ") is (26)
end

fun my-encryptor8(str8 :: String) -> String:
  excited = (str8 + "!!!") # concatanation through addition operator
  excited + excited + excited
where:
  my-encryptor8("ABCDEFGHIJKLMNOPQRSTUVWXYZ") is ("ABCDEFGHIJKLMNOPQRSTUVWXYZ!!!ABCDEFGHIJKLMNOPQRSTUVWXYZ!!!ABCDEFGHIJKLMNOPQRSTUVWXYZ!!!")
end

fun my-encryptor9(str9 :: String) -> Number:
  string-to-code-point(string-char-at(str9, 0))
  # this retrieves the ascii value
where:
  my-encryptor9("ABCDEFGHIJKLMNOPQRSTUVWXYZ") is (65)
end

fun my-encryptor10(str10 :: String) -> String:
  new-string = string-replace(
    string-replace(
      string-to-lower(str10),"r", ""),
  "a", "b")
  (string-substring(new-string, 0, 4)) + (string-substring(new-string, 0, 4)) + (string-substring(new-string, 0, 4)) + (string-substring(new-string, 0, 4))
  # i reused logic from previous encryptors
  
where:
  my-encryptor10("ABCD") is ("bbcdbbcdbbcdbbcd")
  my-encryptor10("FGHI") is ("fghifghifghifghi")
  my-encryptor10("PQRST") is ("pqstpqstpqstpqst")
end