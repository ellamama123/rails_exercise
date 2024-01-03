Exercise 

** 3.1. **
Can't deploy now

** 3.2. **
1. Generate a controller called Foo with actions bar and baz.

```
$ rails g controller FooController bar baz
```

2. By applying the techniques described in Box 3.1, destroy the Foo controller and its associated actions.

```
$ rails d controller FooController bar baz
```

** 3.3. **
1.Make a Contact page for the sample app.15 Following the model in Listing 3.16, first write a test for the existence of a page at the URL /static_pages/contact by testing for the title “Contact | Ruby on Rails Tutorial
Sample App”. Get your test to pass by following the same steps as when
making the About page in Section 3.3.3, including filling the Contact
page with the content from Listing 3.41.

- Code on folder /app/views/static_pages/contact.html.erb

** 4.2. **
1. Assign variables city and state to your current city and state of residence. (If residing outside the U.S., substitute the analogous quantities.)

```
>> city = 'Bac Ninh'
=> "Bac Ninh"
>> state = "Ha Noi"
=> "Ha Noi"
```

2. Using interpolation, print (using puts) a string consisting of the city and
state separated by a comma and a space, as in “Los Angeles, CA”.

```
puts "#{city}, #{state}"
```

3. Repeat the previous exercise but with the city and state separated by a tab
character.

```
puts "#{city}\t#{state}"
```
4. What is the result if you replace double quotes with single quotes in the
previous exercise?

- The result is '#{city}\t#{state}'

** 4.3. **

1. What is the length of the string “racecar”?

```
puts "racecar".length
7
=> nil
```

2. Confirm using the reverse method that the string in the previous exercise is the same when its letters are reversed.

```
puts "racecar".reverse
racecar
=> nil
```

3. Assign the string “racecar” to the variable s. Confirm using the comparison operator == that s and s.reverse are equal.

```
>> s = "racecar"
=> "racecar"
>> s == s.reverse
=> true
```

4. What is the result of running the code shown in Listing 4.9? How does it
change if you reassign the variable s to the string “onomatopoeia”? Hint:
Use up-arrow to retrieve and edit previous commands

```
>> s = "onomatopoeia"            
=> "onomatopoeia"
>> s == s.reverse    
=> false
```


** 4.4. **

1. By replacing FILL_IN with the appropriate comparison test shown in
Listing 4.10, define a method for testing palindromes. Hint: Use the
comparison shown in Listing 4.9.

```
def palindrome_tester(s)
 if s == s.reverse
    puts "It's a palindrome!"
 else
    puts "It's not a palindrome."
 end
end
```

2. By running your palindrome tester on “racecar” and “onomatopoeia”,
confirm that the first is a palindrome and the second isn’t.

```
>> palindrome_tester("racecar")
It's a palindrome!
=> nil
>> palindrome_tester("onomatopoeia")
It's not a palindrome.
=> nil
```

3. By calling the nil? method on palindrome_tester("racecar"),
confirm that its return value is nil (i.e., calling nil? on the result of the
method should return true). This is because the code in Listing 4.10
prints its responses instead of returning them.

```
>> palindrome_tester("racecar").nil?
=> true
```

** 4.5. **

1. Assign a to be to the result of splitting the string “A man, a plan, a canal,
Panama” on comma-space.

```
>> a = "A man, a plan, a canal, Panama"
=> "A man, a plan, a canal, Panama"
>> a = a.split(', ')
=> ["A man", "a plan", "a canal", "Panama"]
```

2. Assign s to the string resulting from joining a on nothing.

```
>> a.join()
=> "A mana plana canalPanama"
```

3. Split s on whitespace and rejoin on nothing. Use the palindrome test from Listing 4.10 to confirm that the resulting string s is not a palindrome by the current definition. Using the downcase method, show that s.downcase is a palindrome.

```
>> s = a.join
=> "A mana plana canalPanama"
>> s = s.split.join
=> "AmanaplanacanalPanama"
>> s == s.reverse
=> false
>> s.downcase == s.reverse.downcase
=> true
```

4. What is the result of selecting element 7 from the range of letters a through z? What about the same range reversed? Hint: both cases you will have to convert the range to an array.

```
>> ('a'..'z').to_a[7]        
=> "h"
>> ('a'..'z').to_a.reverse[7]
=> "s"
```

** 4.6. **

1. Using the range 0..16, print out the first 17 powers of 2.

```
>> (0..16).each do |num|
>>   puts  num*num
>>   puts  '--'
>> end
0
--
1
--
4
--
9
...
256
--
=> 0..16

```
2. Define a method called yeller that takes in an array of characters and
returns a string with an ALLCAPS version of the input. Verify that yeller(['o', 'l', 'd']) returns "OLD". Hint: Combine map, upcase, and join.

```
>> def yeller(char_arr)
>>   char_arr.map(&:upcase).join
>> end
=> :yeller
>> yeller(['o', 'l', 'd'])
=> "OLD"
```

3. Define a method called random_subdomain that returns a randomly
generated string of eight letters.

```
>> def random_subdomain
>>   ('a'..'z').to_a.sample(8).join
>> end
=> :random_subdomain
>> random_subdomain
=> "eawumzpk"
```

4. By replacing the question marks in Listing 4.12 with the appropriate
methods, combine split, shuffle, and join to write a function that
shuffles the letters in a given string.

```
>> def string_shuffle(s)
>>  s.split('').shuffle.join
>> end

=> string_shuffle("foobar")
```

** 4.7. **

1. Define a hash with the keys 'one', 'two', and 'three', and the values 'uno', 'dos', and 'tres'. Iterate over the hash, and for each key/value pair print out "'#{key}' in Spanish is '#{value}'".

```
>> hash.each do |key,value|
>>  puts "#{key} in Spanish is #{value}"
>> end
one in Spanish is uno
two in Spanish is dos
three in Spanish is tres
```

2. Create three hashes called person1, person2, and person3, with first and last names under the keys :first and :last. Then create a params hash so that params[:father] is person1, params[:mother] is person2, and params[:child] is person3.
Verify that, for example, params[:father][:first] has the right value.

```
>> person1 = {"first_name": "Chien", "last_name": "Nguyen Dinh"}
=> {:first_name=>"Chien", :last_name=>"Nguyen Dinh"}
>> person2 = {"first_name": "Chien", "last_name": "ND"}
=> {:first_name=>"Chien", :last_name=>"ND"}
>> person3 = {"first_name": "Chien", "last_name": "Nguyen"}
=> {:first_name=>"Chien", :last_name=>"Nguyen"}
>> params = {father: person1, mother: person2, child: person3}
=> 
{:father=>{:first_name=>"Chien", :last_name=>"Nguyen Dinh"},
...
>> params[:father][:first_name]
=> "Chien"
```

3. Define a hash with symbol keys corresponding to name, email, and a
“password digest”, and values equal to your name, your email address,
and a random string of 16 lower-case letters.

```
>> user_data = { name: "Your Name", email:"your.email@example.com", password_digest: SecureRandom.hex(8) }
=> {:name=>"Your Name", :email=>"your.email@example.com", :password_digest=>"58332c0fe14d04e1"}
```

4. Find an online version of the Ruby API and read about the Hash method merge. What is the value of the following expression?

```
>> { "a" => 100, "b" => 200 }.merge({ "b" => 300 })
=> {"a"=>100, "b"=>300}
```