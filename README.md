# Ruby Building Blocks
Small projects written in Ruby for [The Odin Project.](http://www.theodinproject.com) 

##Projects
* Caesar Cipher
* Stock Picker
* Substring
* Bubble Sort
* Enumerable Methods

##Caesar Cipher
A Caesar Ciphers is a substitution cipher where each letter in a message is replaced with a letter corresponding to a certain number of letters down in the alphabet.  For example, the letter "C" with a key of 3 would become a "F" and thus "Cat" becomes "Fdw"

###Task
Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
```
> caesar_cipher("What a string!", 5)
=> "Bmfy f xywnsl!"
```

##Stock Picker
Use historical "data" to choose the best days to buy and sell stocks to maximize your profits

###Task
Implement a method `#stock_picker` that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
```
> stock_picker([17,3,6,9,15,8,6,1,10])
=> [1,4]  # for a profit of $15 - $3 == $12
```

##Substring
Search a dictionary for a word or phrase

###Task
Implement a method `#substrings` that takes a word as the first argument and then 
an array of valid substrings (your dictionary) as the second argument. It 
should return a hash listing each substring (case insensitive) that was found 
in the original string and how many times it was found.

```
> dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
=> ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

> substrings("below", dictionary)
=> {"below"=>1, "low"=>1}
```
Next, make sure your method can handle multiple words:
```
> substrings("Howdy partner, sit down! How's it going?", dictionary)
=>  {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}
```

##Bubble Sort
###Task

##Enumerable Methods
###Task