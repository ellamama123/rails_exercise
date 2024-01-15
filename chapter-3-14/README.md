Exercise

**3.1.**
Can't deploy now

**3.2.**

1. Generate a controller called Foo with actions bar and baz.

```
$ rails g controller FooController bar baz
```

2. By applying the techniques described in Box 3.1, destroy the Foo controller and its associated actions.

```
$ rails d controller FooController bar baz
```

**3.3.**
1.Make a Contact page for the sample app.15 Following the model in Listing 3.16, first write a test for the existence of a page at the URL /static_pages/contact by testing for the title “Contact | Ruby on Rails Tutorial
Sample App”. Get your test to pass by following the same steps as when
making the About page in Section 3.3.3, including filling the Contact
page with the content from Listing 3.41.

- Code on folder /app/views/static_pages/contact.html.erb

**4.2.2**

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

**4.2.3.**

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

**4.2.4.**

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

**4.3.1.**

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

**4.3.2.**

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

**4.3.3.**

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

**4.4.1**

1. What is the literal constructor for the range of integers from 1 to 10?

- (0..10)

2. What is the constructor using the Range class and the new method? Hint:new takes two arguments in this context.

- Range.new(0,10)

3. Confirm using the == operator that the literal and named constructors from the previous two exercises are identical.

```bash
>> (0..10) == Range.new(0,10)
=> true
```

**4.4.2**

1. What is the class hierarchy for a range? For a hash? For a symbol?

- The class hierarchy for a range is Range -> Class -> Module -> Object -> BasicObject.
- The class hierarchy for a hash is Hash -> Class -> Module -> Object -> BasicObject.
- The class hierarchy for a symbol is Symbol -> Class -> Module -> Object -> BasicObject.

2. Confirm that the method shown in Listing 4.15 works even if we replace self.reverse with just reverse.

- The result is still true.

```bash
>> class Word < String
>>   def palindrome?
>>     self == reverse
>>   end
>> end
=> :palindrome?
>> Word.new('level').palindrome?
=> true
```

**4.4.3**

1. Verify that “racecar” is a palindrome and “onomatopoeia” is not. What
   about the name of the South Indian language “Malayalam”? Hint: Downcase it first.

```bash
>> "racecar".palindrome?
=> true
>> "onomatopoeia".palindrome?
=> false
>> "Malayalam".downcase.palindrome?
=> true
```

2. Using Listing 4.16 as a guide, add a shuffle method to the String
   class. Hint: Refer to Listing 4.12.

```bash
>> class String
>>   def shuffle
>>     self.split('').shuffle.join
>>   end
>> end
=> :shuffle
>> "foobar".shuffle
=> "fraboo"
```

3. Verify that Listing 4.16 works even if you remove self..

- The result is still true

```bash
>> class String
>>   def shuffle
>>     split('').shuffle.join
>>   end
>> end
=> :shuffle
>> "foobar".shuffle
=> "afobor"
```

**4.4.4.**

1. By running the Rails console in the toy app’s directory from Chapter 2, confirm that you can create a user object using User.new.

```bash
>> user = User.new
=> #<User:0x00000001116b0b18 id: nil, name: nil, email: nil, created_at: nil, updated_at: nil>
```

2. Determine the class hierarchy of the user object.

```bash
user.class
=> User(id: integer, name: string, email: string, created_at: datetime, updated_at: datetime)
>> user.class.superclass
=> ApplicationRecord(abstract)
>> user.class.superclass.superclass
=> ActiveRecord::Base
>> user.class.superclass.superclass.superclass
=> Object
```

**4.4.5**

1. In the example User class, change from name to separate first and last
   name attributes, and then add a method called full_name that returns
   the first and last names separated by a space. Use it to replace the use of
   name in the formatted email method.

```bash
class User
    attr_accessor :first_name, :last_name, :email
    def initialize(attributes = {})
        @first_name = attributes[:first_name]
        @last_name = attributes[:last_name]
        @email = attributes[:email]
    end

    def full_name
        "#{@first_name} #{@last_name}"
    end

    def formatted_email
        "#{full_name} <#{@email}>"
    end

    def alphabetical_name
      "#{@last_name}, #{@first_name}"
   end
end

```

2. Add a method called alphabetical_name that returns the last name
   and first name separated by comma-space.

```bash
def alphabetical_name
   "#{@last_name}, #{@first_name}"
end
```

3. Verify that full_name.split is the same as alphabetical_name.split(', ').reverse.

```bash
>> user.full_name.split == user.alphabetical_name.split(', ').reverse
=> true
```

**5**

**5.1.1**

1. It’s well-known that no web page is complete without a cat image. Using
   the command in Listing 5.4, arrange to download the kitten pic shown in
   Figure 5.3.

```bash
$ curl -OL cdn.learnenough.com/kitten.jpg
```

2. Using the mv command, move kitten.jpg to the correct asset directory
   for images (Section 5.2.1).

```bash
$ mv kitten.jpg app/assets/images/kitten.jpg
```

3. Using image_tag, add kitten.jpg to the Home page, as shown in
   Figure 5.4.

```bash
<%= image_tag("kitten.png", alt: "Kitten") %>
```

**5.1.2**

1. Using code like that shown in Listing 5.10, comment out the cat image
   from Section 5.1.1. Verify using a web inspector that the HTML for the
   image no longer appears in the page source.

```bash
<%#= image_tag("kitten.jpg", alt: "Kitten") %>
```

2. By adding the CSS in Listing 5.11 to custom.scss, hide all images in
   the application—currently just the Rails logo on the Home page). Verify
   with a web inspector that, although the image doesn’t appear, the HTML
   source is still present.

```bash
img {
   display: none;
}
```

**5.1.3**

1. Replace the default Rails head with the call to render shown in Listing 5.18. Hint: For convenience, cut the default header rather than just deleting it.

- It's still running

2. Because we haven’t yet created the partial needed by Listing 5.18, the tests should be red. Confirm that this is the case.

```bash
StaticPagesControllerTest#test_should_get_contact:
ActionView::Template::Error: Missing partial layouts/_rails_default with {:locale=>[:en], :formats=>[:html], :variants=>[], :handlers=>[:raw, :erb, :html, :builder, :ruby, :coffee, :jbuilder]}. Searched in:
  * "/Users/joshualusk/Code/sample_app/app/views"
```

3. Create the necessary partial in the layouts directory, paste in the contents, and verify that the tests are now green again.

```bash
5 runs, 9 assertions, 0 failures, 0 errors, 0 skips
```

**5.2.2**

1. As suggested in Section 5.2.2, go through the steps to convert the footer
   CSS from Listing 5.17 to Listing 5.20 to SCSS by hand.

```bash
$color_1: #777;
$color_2: #555;
$color_3: #222;

footer {
	margin-top: 45px;
	padding-top: 5px;
	border-top: 1px solid #eaeaea;
	color: $color_1;
	a {
		color: $color_2;
		&:hover {
			color: $color_3;
		}
	}
	small {
		float: left;
	}
	ul {
		float: right;
		list-style: none;
		li {
			float: left;
			margin-left: 15px;
		}
	}
}
```

**5.3.2**

1. It’s possible to use a named route other than the default using the as: option. Drawing inspiration from this famous Far Side comic strip, change the route for the Help page to use helf (Listing 5.29).

```bash
get '/help', to: 'static_pages#help', as: 'helf'
```

2. Confirm that the tests are now red. Get them to green by updating the
   route in Listing 5.28.

```bash
test "should get help" do
  get helf_path
  assert_response :success
  assert_select "title", "Help | #{@base_title}"
end
```

3. Revert the changes from these exercises using Undo.

- Changes successfully reverted and test passing.

**5.3.3**

1. Update the layout links to use the helf route from Listing 5.29.
<li><%= link_to "Help",   helf_path %></li>
2. Revert the changes using Undo.

- Success

**5.3.4**

1. In the footer partial, change about_path to contact_path and verify that the tests catch the error.

```bash
<li><%= link_to "About", contact_path %></li>
<li><%= link_to "Contact", contact_path %></li>
```

2. It’s convenient to use the full_title helper in the tests by including the Application helper into the test helper, as shown in Listing 5.35. We can then test for the right title using code like Listing 5.36. This is brittle, though, because now any typo in the base title (such as “Ruby on Rails Tutoial”) won’t be caught by the test suite. Fix this problem by
   writing a direct test of the full_title helper, which involves creating a file to test the application helper and then filling in the code indicated with FILL_IN in Listing 5.37. (Listing 5.37 uses assert_equal
   <expected>, <actual>, which verifies that the expected result matches the actual value when compared with the == operator.)

```bash
test "full title helper" do
  assert_equal full_title,         "Ruby on Rails Tutorial Sample App"
  assert_equal full_title("Help"), "Help | Ruby on Rails Tutorial Sample App"
end
```

**5.4.1**

1. Per Table 5.1, change the route in Listing 5.41 to use signup_path instead of users_new_url.

- config/routes.rb:

```bash
get 'users/new', as: 'signup'
```

- test/controllers/users_controller_test.rb:

```bash
test "should get new" do
  get signup_path
  assert_response :success
end
```

2. The route in the previous exercise doesn’t yet exist, so confirm that the tests are now red. (This is intended to help us get comfortable with the red/green flow of Test Driven Development (TDD, Box 3.3); we’ll get the tests back to green in Section 5.4.2.)

- The tests are red.

**5.4.2**

1. If you didn’t solve the exercise in Section 5.4.1, change the test in Listing 5.41 to use the named route signup_path. Because of the route defined in Listing 5.43, this test should initially be green.

- Done

2. In order to verify the correctness of the test in the previous exercise, comment out the signup route to get to red, then uncomment to get to green.

- Verified if commenting out /signup route.

3. In the integration test from Listing 5.32, add code to visit the signup page
   using the get method and verify that the resulting page title is correct.
   Hint: Use the full_title helper as in Listing 5.36

```bash
get signup_path
assert_select "title", full_title("Sign up")
```

Chapter 6

**6.1.1**

1. Rails uses a file called schema.rb in the db/ directory to keep track of the structure of the database (called the schema, hence the filename). Examine your local copy of db/schema.rb and compare its contents to the migration code in Listing 6.2.

```bash
ActiveRecord::Schema[7.1].define(version: 2024_01_04_085015) do
  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
```

2. Most migrations (including all the ones in this tutorial) are reversible, which means we can “migrate down” and undo them with a single command, called db:rollback:

```bash
$ rails db:rollback
```
After running this command, examine db/schema.rb to confirm that the rollback was successful. (See Box 3.1 for another technique useful for reversing migrations.) Under the hood, this command executes the drop_table command to remove the users table from the database. The reason this works is that the change method knows that drop_table is the inverse of create_table, which means that the rollback migration can be easily inferred. In the case of an irreversible migration, such as one to remove a database column, it is necessary to define separate up and down methods in place of the single change method. Read about migrations in the Rails Guides for more information. 

- Code contents of db/schema.db after running $ rails db:rollback:

```bash
ActiveRecord::Schema[7.1].define(version: 0) do
end
```

3. Re-run the migration by executing rails db:migrate again. Confirm that the contents of db/schema.rb have been restored.

- After running again, the contents of db/schema.rb have been restored.

**6.1.2**

1. In a Rails console, use the technique from Section 4.4.4 to confirm that User.new is of class User and inherits from ApplicationRecord.

```bash
>> user = User.new
=> #<User:0x000000012e890740 id: nil, name: nil, email: nil, created_at: nil, updated_at: nil>
>> user.class
=> User(id: integer, name: string, email: string, created_at: datetime, updated_at: datetime)
>> user.class.superclass
=> ApplicationRecord(abstract)
```

2. Confirm that ApplicationRecord inherits from ActiveRecord::Base.

```bash
>> user.class.superclass.superclass
=> ActiveRecord::Base
```

**6.1.3**

1. Confirm that user.name and user.email are of class String.

```bash
>> user.name.class
=> String
>> user.email.class
=> String
```

2. Of what class are the created_at and updated_at attributes?

```bash
>> user.created_at.class
=> ActiveSupport::TimeWithZone
>> user.updated_at.class
=> ActiveSupport::TimeWithZone
```

**6.1.4**

1. Find the user by name. Confirm that find_by_name works as well.(You will often encounter this older style of find_by in legacy Rails applications.)

```bash
>> User.find_by(name: "Michael Hartl")
  User Load (2.5ms)  SELECT "users".* FROM "users" WHERE "users"."name" = ? LIMIT ?  [["name", "Michael Hartl"], ["LIMIT", 1]]
=> 
#<User:0x000000012fb79190
 id: 1,
 name: "Michael Hartl",
 email: "michael@example.com",
 created_at: Thu, 04 Jan 2024 09:20:03.179740000 UTC +00:00,
 updated_at: Thu, 04 Jan 2024 09:20:03.179740000 UTC +00:00>
```

```bash
>> User.find_by_name( "Michael Hartl")
  User Load (0.2ms)  SELECT "users".* FROM "users" WHERE "users"."name" = ? LIMIT ?  [["name", "Michael Hartl"], ["LIMIT", 1]]
=> 
#<User:0x000000012bc830d0
 id: 1,
 name: "Michael Hartl",
 email: "michael@example.com",
 created_at: Thu, 04 Jan 2024 09:20:03.179740000 UTC +00:00,
 updated_at: Thu, 04 Jan 2024 09:20:03.179740000 UTC +00:00>
```

2. For most practical purposes, User.all acts like an array, but confirm that in fact it’s of class User::ActiveRecord_Relation.

```bash
>> User.all.class
=> User::ActiveRecord_Relation
```
3. Confirm that you can find the length of User.all by passing it the length method (Section 4.2.3). Ruby’s ability to manipulate objects based on how they act rather than on their formal class type is called duck typing, based on the aphorism that “If it looks like a duck, and it quacks like a duck, it’s probably a duck.”

```bash
>> User.all.length
  User Load (2.2ms)  SELECT "users".* FROM "users"
=> 1
```

**6.1.5**
1. Update the user’s name using assignment and a call to save.

```bash
>> user.name = "dinh chien"
=> "dinh chien"
>> user.save
  TRANSACTION (3.3ms)  begin transaction
  User Update (6.5ms)  UPDATE "users" SET "name" = ?, "updated_at" = ? WHERE "users"."id" = ?  [["name", "dinh chien"], ["updated_at", "2024-01-04 09:30:49.262755"], ["id", 1]]
  TRANSACTION (0.4ms)  commit transaction
=> true
```

2. Update the user’s email address using a call to update.

```bash
>> user.update(email: 'nguyendinhchienpc@example.com')
  TRANSACTION (0.3ms)  begin transaction
  User Update (1.3ms)  UPDATE "users" SET "email" = ?, "updated_at" = ? WHERE "users"."id" = ?  [["email", "nguyendinhchienpc@example.com"], ["updated_at", "2024-01-04 09:32:21.928722"], ["id", 1]]
  TRANSACTION (0.4ms)  commit transaction
=> true
```

3. Confirm that you can change the magic columns directly by updating
the created_at column using assignment and a save. Use the value
1.year.ago, which is a Rails way to create a timestamp one year before
the present time.

```bash
>> user.created_at = 1.year.ago
=> Wed, 04 Jan 2023 09:32:52.137795000 UTC +00:00
>> user.save
  TRANSACTION (0.1ms)  begin transaction
  User Update (0.8ms)  UPDATE "users" SET "created_at" = ?, "updated_at" = ? WHERE "users"."id" = ?  [["created_at", "2023-01-04 09:32:52.137795"], ["updated_at", "2024-01-04 09:32:59.972820"], ["id", 1]]
  TRANSACTION (0.4ms)  commit transaction
=> true
```

**6.2.1**
1. In the console, confirm that a new user is currently valid.

```bash
>> User.new(name: "abc", email: "abc@gmail.com").valid?
=> true
```

2. Confirm that the user created in Section 6.1.3 is also valid.

```bash
>> User.new.valid?
=> true
```

**6.2.2**
1. Make a new user called u and confirm that it’s initially invalid. What are the full error messages?

```bash
>> u = User.new
=> #<User:0x000000012abd9978 id: nil, name: nil, email: nil, created_at: nil, updated_at: nil>
>> u.valid?
=> false
>> u.errors.full_messages
=> ["Name can't be blank", "Email can't be blank"]
```
2. Confirm that u.errors.messages is a hash of errors. How would you access just the email errors?

```bash
>> u.errors.messages
=> {:name=>["can't be blank"], :email=>["can't be blank"]}
>> u.errors.messages.class == Hash
=> true
>> u.errors[:name]
=> ["can't be blank"]
```

**6.2.3**

1. Make a new user with too-long name and email and confirm that it’s not
valid.

```bash
>> user = User.new(name: "a" * 51, email: "a" * 244 + "@example.com")
user = User.new(name: "a" * 51, email: "a" * 244 + "@example.com")
=> 
#<User:0x000000015a72fd70
...
>> user.valid?
=> false
```

2. What are the error messages generated by the length validation?

```bash
>> user.errors.full_messages
=> ["Name is too long (maximum is 50 characters)", "Email is too long (maximum is 255 characters)"]
```
**6.3.2**

1. Confirm that a user with valid name and email still isn’t valid overall.

```bash
>> user = User.new(name: "Example User", email: "user@example.com")
=> #<User:0x000000013cf31fc8
...
>>user.valid?
=> User Exists? (0.5ms)  SELECT 1 AS one FROM "users" WHERE "users"."email" = ? LIMIT ?  [["email", "user@example.com"], ["LIMIT", 1]]
```
=> false

2. What are the error messages for a user with no password?

```bash
>> user.errors.full_messages
=> ["Password can't be blank"]
```

**6.3.3**

1. Confirm that a user with valid name and email but a too-short password isn’t valid.

```bash
>> user = User.new(name: "Example User 1", email: "user1@example.com",password: "a" * 5, password_confirmation: "a" * 5 )
=> 
#<User:0x00000001585ef2a0
>> user.valid?
  User Exists? (0.5ms)  SELECT 1 AS one FROM "users" WHERE "users"."email" = ? LIMIT ?  [["email", "user1@example.com"], ["LIMIT", 1]]
=> false
```

2. What are the associated error messages?

```bash
>> user.errors.full_messages
=> ["Password is too short (minimum is 6 characters)"]
```

Chapter 7

**7.1.2**

1. Visit /about in your browser and use the debug information to determine the controller and action of the params hash.

```bash
#<ActionController::Parameters {"controller"=>"static_pages", "action"=>"about"} permitted: false>
```

2. In the Rails console, pull the first user out of the database and assign it to the variable user. What is the output of puts user.attributes.to_yaml? Compare this to using the y method via y user.attributes.

```bash
>> user = User.first
  User Load (0.3ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> 
#<User:0x000000010394bc00
...
>> puts user.attributes.to_yaml
---
id: 1
name: dinh chien
email: nguyendinhchienpc@example.com
created_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: 2023-01-04 09:32:52.137795000 Z
  zone: &1 !ruby/object:ActiveSupport::TimeZone
    name: Etc/UTC
  time: 2023-01-04 09:32:52.137795000 Z
updated_at: !ruby/object:ActiveSupport::TimeWithZone
  utc: 2024-01-04 09:32:59.972820000 Z
  zone: *1
  time: 2024-01-04 09:32:59.972820000 Z
password_digest:
=> nil
>> puts user.attributes
{"id"=>1, "name"=>"dinh chien", "email"=>"nguyendinhchienpc@example.com", "created_at"=>Wed, 04 Jan 2023 09:32:52.137795000 UTC +00:00, "updated_at"=>Thu, 04 Jan 2024 09:32:59.972820000 UTC +00:00, "password_digest"=>ni
```

**7.1.2**
1. Using embedded Ruby, add the created_at and updated_at “magic column” attributes to the user show page from Listing 7.4.

```bash
<%= @user.name %>, <%= @user.email %> <br>
Created at <%= @user.created_at %>, updated last at <%= @user.updated_at %>.
```

2. Using embedded Ruby, add Time.now to the user show page. What happens when you refresh the browser?

```bash
<%= @user.name %>, <%= @user.email %> <br>
Created at <%= @user.created_at %>, updated last at <%= @user.updated_at %>. <br>
Current Time: <%= Time.now %>.
```

**7.1.4**

1. Associate a Gravatar with your primary email address if you haven’t already. What is the MD5 hash associated with the image?

```bash
2585a7e2459ba5d513d457642135dce9
```

2. Verify that the code in Listing 7.12 allows the gravatar_for helper defined in Section 7.1.4 to take an optional size parameter, allowing code like gravatar_for user, size: 50 in the view. (We’ll put this improved helper to use in Section 10.3.1.)

- The size of gravatar increase by size parameter.

3. The options hash used in the previous exercise is still commonly used, but as of Ruby 2.0 we can use keyword arguments instead. Confirm that the code in Listing 7.13 can be used in place of Listing 7.12. What are the diffs between the two?

- The code in listing 7.13 is confirmed to be able to be used in place of the code in listing 7.12.


**7.1.2**

1. In Listing 7.15, replace :name with :nome. What error message do you
get as a result?

```bash
undefined method `nome' for #<User id: nil, name: nil, email: nil, created_at: nil, updated_at: nil, password_digest: nil>
Did you mean?  name
```

2. Confirm by replacing all occurrences of f with foobar that the name of the block variable is irrelevant as far as the result is concerned. Why might foobar nevertheless be a bad choice?

```bash
foobar would be a bad choice for the block variable (currently f) because while f can me mapped to form as a good shorthand variable, foobar is simply a placeholder word that in no way relates to form.
```

**7.3.2**

1. By hitting the URL /signup?admin=1, confirm that the admin attribute appears in the params debug information.

```bash
--- !ruby/object:ActionController::Parameters
parameters: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
  admin: '1'
  controller: users
  action: new
permitted: false
```

**7.3.3**

1. Confirm by changing the minimum length of passwords to 5 that the error message updates automatically as well.

- The message will be "Password is too short (minimum is 5 characters)"

2. How does the URL on the unsubmitted signup form (Figure 7.13) compare to the URL for a submitted signup form (Figure 7.19)? Why don’t they match?
- We've pointed the signup route to users#new, but the call to render the new view from the create action results in the path being /users

**7.3.4**


```bash
test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
    post users_path, params: { user: { name: "",
                                       email: "user@invalid",
                                       password:              "foo",
                                       password_confirmation: "bar" } }
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.alert.alert-danger'
    assert_select "li", "Name can't be blank"
    assert_select "li", "Email is invalid"
    assert_select "li", "Password confirmation doesn't match Password"
    min_validation = User.validators_on(:password).find do |v|
      v.options.key?(:minimum)
    end
    min_length = min_validation.options[:minimum]
    assert_select "li", "Password is too short (minimum is #{min_length} characters)"
  end
```

**7.4.1**

1. Using the Rails console, verify that a user is in fact created when submitting valid information.

```bash
>> user = User.find(2) 
  User Load (0.4ms)  SELECT "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 2], ["LIMIT", 1]]
=> 
#<User:0x0000000132b86c98
...
>> user.attributes                                                         
=> 
{"id"=>2,
 "name"=>"1212",
 "email"=>"1212@gmail.com",
 "created_at"=>Mon, 08 Jan 2024 08:39:22.054200000 UTC +00:00,
 "updated_at"=>Mon, 08 Jan 2024 08:39:22.054200000 UTC +00:00,
 "password_digest"=>"$2a$12$sPVPqis3AdrlVyJQGvsxr.Ue3kN5eBonzDY6DnQyJe2CsTfQNX1ya"}
```


2. Confirm by updating Listing 7.26 and submitting a valid user that redirect_to user_url(@user) has the same effect as redirect_to @user.

- The redirect_to user_url(@user) has the same effect as redirect_to @user.

**7.4.2**

1. In the console, confirm that you can use interpolation (Section 4.2.2)
to interpolate a raw symbol. For example, what is the return value of
"#{:success}"?

```bash
>> "#{:success}"
=> "success"
```
2. How does the previous exercise relate to the flash iteration shown in Listing 7.28?

```bash
%div{class: "alert alert-#{message_type}"}
```

**7.4.3**

1. Using the Rails console, find by the email address to double-check that
the new user was actually created. The result should look something like
Listing 7.30.
2. Create a new user with your primary email address. Verify that the Gravatar correctly appears

**7.5**
Cant deploy


CHAPTER 8

**8.1.1**

1. What is the difference between GET login_path and POST login_path?

- GET login_path routes to the Sessions Controller's show action and POST login_path routes to the Sessions Controller's 'create` action.

2. By piping the results of rails routes to grep, list all the routes associated with the Users resource. Do the same for Sessions. How many routes does each resource have? Hint: Refer to the section on grep in Learn Enough Command Line to Be Dangerous.

```bash
$ rails routes | grep 'users#'
          POST   /signup(.:format)         users#create
    users GET    /users(.:format)          users#index
 new_user GET    /users/new(.:format)      users#new
edit_user GET    /users/:id/edit(.:format) users#edit
     user GET    /users/:id(.:format)      users#show
          PATCH  /users/:id(.:format)      users#update
          PUT    /users/:id(.:format)      users#update
          DELETE /users/:id(.:format)      users#destroy
$ rails routes | grep 'sessions#'
    login GET    /login(.:format)          sessions#new
          POST   /login(.:format)          sessions#create
   logout DELETE /logout(.:format)         sessions#destroy
$ rails routes | grep 'users#' | wc -l
      8
$ rails routes | grep 'sessions#' | wc -l
      3
```

**8.1.2**

1. Submissions from the form defined in Listing 8.4 will be routed to the Session controller’s create action. How does Rails know to do this? Hint: Refer to Table 8.1 and the first line of Listing 8.5.

- Adding the key :url to the hash of form_for with the value login_path directs the form to post to the /login URL. In the config/routes.rb file, this URL is mapped to the create action in the sessions controller.

**8.1.3**
1. Using the Rails console, confirm each of the values in Table 8.2. Start with user = nil, and then use user = User.first. Hint: To coerce the result to a boolean value, use the bang-bang trick from Section 4.2.3, as in !!(user && user.authenticate('foobar')).

```bash
>> user = nil
=> nil
>> !!(user && user.authenticate('foobar'))
=> false
>> user = User.first
  User Load (0.4ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> 
#<User:0x00000001070b9db8
...
>> !!(user && user.authenticate('foobaz'))
=> false
>> !!(user && user.authenticate('foobar'))
=> true
```

**8.2.1**

1. Log in with a valid user and inspect your browser’s cookies. What is the value of the session content? Hint: If you don’t know how to view your browser’s cookies, Google for it (Box 1.2).

- The value of session content is 'KUOhM45TLPNLdlLk3InKLY3z2t56nD5n%2BBKmCnhTJm7ENuw%2FhdKlD8Nn22WpzrlCi3Pqxt1d7kdafBnUWMuaNvcKHDESmW3i7voTdTX9C9EJ1yFEXqmIeDevE7%2FxwjLOQoDL9YjPOZRC%2Bpim9OMPLrtyr3rbbQ%2BP%2Bph6D8XTCNNf2I0iRhv1xsjW7mMYXwr1SDG5yiWd%2FZ7xlVB0zDSCfn2HgYJqiyKsPwJnZr%2FlENFANYRzGaENTUT78xlntOC0YSh%2BDh%2BVCZ0S0ub7uSL4ZgkAhjQkVgxdf0U%2BwKgjp2%2B18SdDLFIyXOY%3D--9wLBufdoXAWTarvo--KtkL56%2BHmnE4nsQKvYWCMg%3D%3D'

2. What is the value of the Expires attribute from the previous exercise?

- The value of the Expires attribute is 'Fri Jan 10 2025 10:41:38 GMT+0700 (Indochina Time)'

**8.2.2**

1. Confirm at the console that User.find_by(id: ...) returns nil when the corresponding user doesn’t exist.

```bash
>> User.find_by(id: 10)
  User Load (0.3ms)  SELECT "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 10], ["LIMIT", 1]]
=> nil
```

2. In a Rails console, create a session hash with key :user_id. By following the steps in Listing 8.17, confirm that the ||= operator works as required.

```bash
>> session = {}
=> {}
>> session[:user_id] = nil
=> nil
>> @current_user ||= User.find_by(id: session[:user_id])
  User Load (0.4ms)  SELECT "users".* FROM "users" WHERE "users"."id" IS NULL LIMIT ?  [["LIMIT", 1]]
=> nil
>> session[:user_id]= User.first.id
  User Load (0.1ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> 1
>> @current_user ||= User.find_by(id: session[:user_id])
  User Load (0.3ms)  SELECT "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
=> 
#<User:0x000000010a276748
...
irb(main):011> @current_user ||= User.find_by(id: session[:user_id])
=> 
#<User:0x000000010a276748
...
```

**8.2.5**
1. Is the test suite red or green if you comment out the log_in line in Listing 8.29?

- The test suite become red if comment out the log_in line in Listing 8.25.

2. By using your text editor’s ability to comment out code, toggle back and
forth between commenting out code in Listing 8.29 and confirm that the
test suite toggles between red and green. (You will need to save the file
between toggles.)

- The test suite is confirmed to toggle between red and green based on whether or not the log_in line in Listing 8.24 is commented out or not.

**8.3**

1. Confirm in a browser that the “Log out” link causes the correct changes in the site layout. What is the correspondence between these changes and the final three steps in Listing 8.35?

- Verified that the logout link works as expected.

2. By checking the site cookies, confirm that the session is correctly removed after logging out

- The session is correctly removed after logging out.


CHAPTER 9

**9.1.1**
1. In the console, assign user to the first user in the database, and verify by calling it directly that the remember method works. How do remember_token and remember_digest compare?

```bash
>> user = User.first
  User Load (0.3ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> 
#<User:0x0000000120df8bf0
...
>> user.remember
  TRANSACTION (0.1ms)  begin transaction
  User Update (1.2ms)  UPDATE "users" SET "updated_at" = ?, "remember_digest" = ? WHERE "users"."id" = ?  [["updated_at", "2024-01-10 08:10:44.075344"], ["remember_digest", "$2a$12$ruvQjsDiIpqJdQY9.Rrc8.JUZPmWzpv167pLorD97JskYGis5nh1y"], ["id", 1]]
  TRANSACTION (0.2ms)  commit transaction
=> true
>> user.remember_token
=> "6bn0Q2exc_-jpx5D2nYqBQ"
>> user.remember_digest
=> "$2a$12$ruvQjsDiIpqJdQY9.Rrc8.JUZPmWzpv167pLorD97JskYGis5nh1y"
```

2. In Listing 9.3, we defined the new token and digest class methods by explicitly prefixing them with User. This works fine and, because they are actually called using User.new_token and User.digest, it is probably the clearest way to define them. But there are two perhaps more idiomatically correct ways to define class methods, one slightly confusing and one extremely confusing. By running the test suite, verify that the implementations in Listing 9.4 (slightly confusing) and Listing 9.5 (extremely confusing) are correct. (Note that, in the context of Listing 9.4 and Listing 9.5, self is the User class, whereas the other uses of self
in the User model refer to a user object instance. This is part of what makes them confusing.)

- Both methods work correctly.

**9.1.2**

1. By finding the cookie in your local browser, verify that a remember token and encrypted user id are present after logging in.

- A remember token and encrypted user id are present after logging in.

2. At the console, verify directly that the authenticated? method defined in Listing 9.6 works correctly

```bash
>> user = User.first
  User Load (3.9ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> 
#<User:0x0000000144ef93a0
...
>> user.remember
   (0.3ms)  BEGIN
  SQL (0.6ms) UPDATE "users" SET "updated_at" = ?, "remember_digest" = ? WHERE "users"."id" = ?  [["updated_at", "2024-01-10 08:45:01.988226"], ["remember_digest", "$2a$12$4F7VgXl9L0rOyyq4J6OAXOoOshM1SURdQ.7.yUWj4uTt4VL6OyfSC"], ["id", 1]]
   (0.8ms)  COMMIT
=> true
>> user.authenticated?(user.remember_token)
=> true
```

**9.1.2**

1. After logging out, verify that the corresponding cookies have been removed from your browser.

- The corresponding cookies have been removed from your browser.

**9.1.3**

1. Comment out the fix in Listing 9.16 and then verify that the first subtle
bug is present by opening two logged-in tabs, logging out in one, and
then clicking “Log out” link in the other.

- When log out in second logged-in tab, the screen doesn't go to anywhere.

2. Comment out the fix in Listing 9.19 and verify that the second subtle
bug is present by logging out in one browser and closing and opening the
second browser.

- The second subtle bug is present by logging out in one browser and closing and opening the second browser

3. Uncomment the fixes and confirm that the test suite goes from red to green.

- The test suite goes to green when uncomment.

**10.1.2**
1. Confirm by submitting various invalid combinations of username, email,
and password that the edit form won’t accept invalid submissions.

- When submitting various invalid data, the form won't accept.

**10.1.3**

1. Add a line in Listing 10.9 to test for the correct number of error messages.
Hint: Use an assert_select (Table 5.2) that tests for a div with class
alert containing the text “The form contains 4 errors.”

- assert_select "div.alert", text: "The form contains 4 errors."

**10.1.4**

1. Double-check that you can now make edits by making a few changes on the development version of the application.

- Edit work fine.

2. What happens when you change the email address to one without an associated Gravatar?

- Image don't change.

**10.2.1**

1. As noted above, by default before filters apply to every action in a controller, which in our cases is an error (requiring, e.g., that users log in to hit the signup page, which is absurd). By commenting out the only:hash in Listing 10.15, confirm that the test suite catches this error.

- 

**10.2.2**

1. Why is it important to protect both the edit and update actions?

- To avoid prevent other user edit information that doesn't belongs to them.
 
2. Which action could you more easily test in a browser?

- Edit action.

**10.2.3**
1. Write a test to make sure that friendly forwarding only forwards to the
given URL the first time. On subsequent login attempts, the forwarding
URL should revert to the default (i.e., the profile page). Hint: Add to
the test in Listing 10.29 by checking for the right value of session-
[:forwarding_url].

```bash
Tested successful!

test "successful edit with friendly forwarding" do
    get edit_user_path(@user)
    log_in_as(@user)
    assert_redirected_to edit_user_url(@user)
    name  = "Foo Bar"
    email = "foo@bar.com"
    patch user_path(@user), params: { user: { name:  name,
                                              email: email,
                                              password:              "",
                                              password_confirmation: "" } }
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal name,  @user.name
    assert_equal email, @user.email
    log_in_as(@user)
    assert_redirected_to user_url(@user)
```

2. Put a debugger (Section 7.1.3) in the Sessions controller’s new action,
then log out and try to visit /users/1/edit. Confirm in the debugger that the
value of session[:forwarding_url] is correct. What is the value of
request.get? for the new action? (Sometimes the terminal can freeze
up or act strangely when you’re using the debugger; use your technical
sophistication (Box 1.2) to resolve any issues.)

```bash
session[:forwarding_url] -> "http://localhost:3000/users/1/edit"
```

**10.3.1**

1. We’ve now filled in all the links in the site layout. Write an integration
test for all the layout links, including the proper behavior for logged-in
and non-logged-in users. Hint: Use the log_in_as helper and add to
the steps shown in Listing 5.32.

```bash
    @user = users(:archer)
    log_in_as(@user)
    
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", users_path
    assert_select "a[href=?]", user_path(@user)
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", signup_path
```

**10.3.2**

1. Verify that trying to visit the edit page of another user results in a redirect as required by Section 10.2.2.

- When attempting to access the edit page of another user, the system redirects the user to the home page.

**10.3.3**

1. Confirm at the console that setting the page to nil pulls out the first page of users.

```bash
>> User.paginate(page: nil)
  User Load (0.4ms)  SELECT "users".* FROM "users" /* loading for pp */ LIMIT ? OFFSET ?  [["LIMIT", 11], ["OFFSET", 0]]
=> 
[#<User:0x000000010d821a28
  id: 1,
  name: "Example User",
  email: "example@railstutorial.org",
  created_at: Thu, 11 Jan 2024 03:37:08.365964000 UTC +00:00,
  updated_at: Thu, 11 Jan 2024 03:37:08.365964000 UTC +00:00,
  password_digest: "[FILTERED]",
  remember_digest: nil>,
 #<User:0x000000010d821960
  id: 2,
  name: "Example User",
  email: "example1@railstutorial.org",
  created_at: Thu, 11 Jan 2024 03:46:47.602932000 UTC +00:00,
  updated_at: Thu, 11 Jan 2024 03:46:47.602932000 UTC +00:00,
  password_digest: "[FILTERED]",
  remember_digest: nil>,
 #<User:0x000000010d821898
  id: 3,
  name: "Example User",
  email: "example2@railstutorial.org",
```

2. What is the Ruby class of the pagination object? How does it compare to the class of User.all?

```bash
>> User.paginate(page: 1).class
=> User::ActiveRecord_Relation
>> User.all.class
=> User::ActiveRecord_Relation
```

**10.3.4**

1. By commenting out the pagination links in Listing 10.45, confirm that the test in Listing 10.48 goes red.
2. Confirm that commenting out only one of the calls to will_paginate leaves the tests green. How would you test for the presence of both sets of will_paginate links? Hint: Use a count from Table 5.2.

**10.3.5**

1. Comment out the render line in Listing 10.52 and confirm that the resulting tests are red.

- The resulting tests are red.

**10.4.1**
1. By issuing a PATCH request directly to the user path as shown in Listing 10.56, verify that the admin attribute isn’t editable through the web. To be sure your test is covering the right thing, your first step should be to add admin to the list of permitted parameters in user_params so that the initial test is red. For the final line, make sure to load the updated
user information from the database (Section 6.1.5).


**10.4.2**

1. As the admin user, destroy a few sample users through the web interface. What are the corresponding entries in the server log?

```bash
Started DELETE "/users/3" for ::1 at 2024-01-11 14:19:09 +0700
Processing by UsersController#destroy as HTML
  Parameters: {"authenticity_token"=>"[FILTERED]", "id"=>"3"}
  User Load (0.3ms)  SELECT "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 9], ["LIMIT", 1]]
  ↳ app/helpers/sessions_helper.rb:9:in `current_user'
  User Load (0.1ms)  SELECT "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 3], ["LIMIT", 1]]
  ↳ app/controllers/users_controller.rb:45:in `destroy'
  TRANSACTION (0.1ms)  begin transaction
  ↳ app/controllers/users_controller.rb:45:in `destroy'
  User Destroy (0.7ms)  DELETE FROM "users" WHERE "users"."id" = ?  [["id", 3]]
  ↳ app/controllers/users_controller.rb:45:in `destroy'
  TRANSACTION (0.3ms)  commit transaction
  ↳ app/controllers/users_controller.rb:45:in `destroy'
Redirected to http://localhost:3000/users
Completed 302 Found in 12ms (ActiveRecord: 1.4ms | Allocations: 3059)
```

**10.4.3**
1. By commenting out the admin user before filter in Listing 10.59, confirm that the tests go red.

- The tests go red by commenting out the admin user

CHAPTER 11

**11.1.1**

1. Verify that the test suite is still green.

- The test suite is green.

2. Why does Table 11.2 list the _url form of the named route instead of the_path form? Hint: We’re going to use it in an email.

- Because it will user resources from out of the app domain

**11.1.2**

1. Verify that the test suite is still green after the changes made in this section.

- The test suite is still green.

2. By instantiating a User object in the console, confirm that calling the create_activation_digest method raises a NoMethodError due to its being a private method. What is the value of the user’s activation digest?

```bash
>> User.first.create_activation_digest
  User Load (0.7ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
/Users/nguyendinhchien/.gem/ruby/3.0.6/gems/activemodel-7.1.2/lib/active_model/attribute_methods.rb:486:in `method_missing': private method `create_activation_digest' called for #<User id: 4, name: "Example User", email: "example3@railstutorial.org", created_at: "2024-01-11 03:47:44.958138000 +0000", updated_at: "2024-01-11 03:47:44.958138000 +0000", password_digest: [FILTERED], remember_digest: nil, admin: false, activation_digest: nil, activated: false, activated_at: nil> (NoMethodError)
Did you mean?  restore_activation_digest!
```

3.. In Listing 6.35, we saw that email downcasing can be written more simply as email.downcase! (without any assignment). Make this change to the downcase_email method in Listing 11.3 and verify by running the test suite that it works.

```bash
def downcase_email
    email.downcase!
end
```

**11.2.1**

1. At the console, verify that the escape method in the CGI module escapes
out the email address as shown in Listing 11.15. What is the escaped
value of the string "Don't panic!"?


```bash
>> CGI.escape("Don't panic!")
=> "Don%27t+panic%21"
```

**11.2.2** 

1. Preview the email templates in your browser. What do the Date fields read for your previews?

```bash
Date: Thu, 11 Jan 2024 08:03:52 +0000
```

**11.2.3**

1. Verify that the full test suite is still green.

- The full test suite is still green.

2. Confirm that the test goes red if you remove the call to CGI.escape in Listing 11.20.

- If remove the call to CGI.escape, the test goes red.

**11.2.4**

1. Sign up as a new user and verify that you’re properly redirected. What is the content of the generated email in the server log? What is the value of the activation token?
2. Verify at the console that the new user has been created but that it is not yet activated.


**11.3.1**

1. Create and remember new user at the console. What are the user’s remember and activation tokens? What are the corresponding digests?

```bash
>> user =  User.new(name: "Tom Cruise", email: "tom@email.com", password: "buzzword", password_confirmation: "buzzword")
=> 
#<User:0x0000000133e53948
...
>> user.valid?
  User Exists? (0.4ms)  SELECT 1 AS one FROM "users" WHERE "users"."email" = ? LIMIT ?  [["email", "tom@email.com"], ["LIMIT", 1]]
=> true
>> user.save
  TRANSACTION (0.4ms)  begin transaction
  User Exists? (1.5ms)  SELECT 1 AS one FROM "users" WHERE "users"."email" = ? LIMIT ?  [["email", "tom@email.com"], ["LIMIT", 1]]
  User Create (2.0ms)  INSERT INTO "users" ("name", "email", "created_at", "updated_at", "password_digest", "remember_digest", "admin", "activation_digest", "activated", "activated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?) RETURNING "id"  [["name", "Tom Cruise"], ["email", "tom@email.com"], ["created_at", "2024-01-12 02:47:42.868606"], ["updated_at", "2024-01-12 02:47:42.868606"], ["password_digest", "[FILTERED]"], ["remember_digest", nil], ["admin", 0], ["activation_digest", "$2a$12$XIuWW70JKDM/FH69JbIaA.Dnjv5gZQAt.KG85OueArmTgLAy/LHB2"], ["activated", 0], ["activated_at", nil]]
  TRANSACTION (0.4ms)  commit transaction
=> true
```

2. Using the generalized authenticated? method from Listing 11.26, verify that the user is authenticated according to both the remember token and the activation token.

```bash
>> user.authenticated?(:activation, user.activation_token)
=> true
>> user.authenticated?(:remember, user.remember_token)
=> false
```

CHAPTER 12

**12.1.1**

1. Verify that the test suite is still green.

- The test suite is still green

2. Why does Table 12.1 list the _url form of the edit named route instead
of the _path form? Hint: The answer is the same as for the similar
account activations exercise (Section 11.1.1).

**12.1.2**

1. Why does the form_for in Listing 12.4 use :password_reset instead of @password_reset?

- 

**12.1.3**

1. Submit a valid email address to the form shown in Figure 12.6. What
error message do you get?
2. Confirm at the console that the user in the previous exercise has valid reset_digest and reset_sent_at attributes, despite the error. What are the attribute values?

**12.2.1**

1. Preview the email templates in your browser. What do the Date fields read for your previews?
2. Submit a valid email address to the new password reset form. What is the content of the generated email in the server log?
3. At the console, find the user object corresponding to the email address from the previous exercise and verify that it has valid reset_digest and reset_sent_at attributes.

**12.2.2**

1. Run just the mailer tests. Are they green?
2. Confirm that the test goes red if you remove the second call to CGI.escape in Listing 12.12.

**12.3.1**

1. Follow the link in the email from the server log in Section 12.2.1. Does it properly render the form as shown in Figure 12.11?
2. What happens if you submit the form from the previous exercise?

**12.3.2**

1. Follow the email link from Section 12.2.1 again and submit mismatched passwords to the form. What is the error message?
2. In the console, find the user belonging to the email link, and retrieve the value of the password_digest attribute. Now submit valid matching passwords to the form shown in Figure 12.12. Did the submission appear to work? How did it affect the value of password_digest? Hint: Use user.reload to retrieve the new value.


**12.3.3**

1. In Listing 12.6, the create_reset_digest method makes two calls to update_attribute, each of which requires a separate database operation. By filling in the template shown in Listing 12.20, replace the two update_attribute calls with a single call to update_columns, which hits the database only once. After making the changes, verify that the test suite is still green. (For convenience, Listing 12.20 includes the results of solving the exercise in Listing 11.39.)
2. Write an integration test for the expired password reset branch in Listing 12.16 by filling in the template shown in Listing 12.21. (This code introduces response.body, which returns the full HTML body of the page.) There are many ways to test for the result of an expiration, but the method suggested by Listing 12.21 is to (case-insensitively) check that the response body includes the word “expired”.
3. Expiring password resets after a couple of hours is a nice security precaution, but there is an even more secure solution for cases where a public computer is used. The reason is that the password reset link remains active for 2 hours and can be used even if logged out. If a user reset their password from a public machine, anyone could press the back button and change the password (and get logged in to the site). To fix this, add the code shown in Listing 12.22 to clear the reset digest on successful password update.5
4. Add a line to Listing 12.18 to test for the clearing of the reset digest in the previous exercise. Hint: Combine assert_nil (first seen in Listing 9.25) with user.reload (Listing 11.33) to test the reset_digest attribute directly.

**12.4**
Can't deploy

CHAPTER 13

**13.1.1**

1. Using Micropost.new in the console, instantiate a new Micropost object called micropost with content “Lorem ipsum” and user id equal to the id of the first user in the database. What are the values of the magic columns created_at and updated_at?

```bash
>> Micropost.new
=> #<Micropost:0x0000000127f36cb8 id: nil, content: nil, user_id: nil, created_at: nil, updated_at: nil>
>> micro = Micropost.new(content: "Lorem ipsum", user_id: 4)
=> #<Micropost:0x0000000127d554a8 id: nil, content: "Lorem ipsum", user_id: 4, created_at: nil, updated_at: nil>
```
2. What is micropost.user for the micropost in the previous exercise? What about micropost.user.name?

```bash
>> micro.user
  User Load (0.1ms)  SELECT "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 4], ["LIMIT", 1]]
=> 
#<User:0x00000001179a9a58
 id: 4,
 name: "Example User",
 email: "example3@railstutorial.org",
 created_at: Thu, 11 Jan 2024 03:47:44.958138000 UTC +00:00,
 updated_at: Thu, 11 Jan 2024 03:47:44.958138000 UTC +00:00,
 password_digest: "[FILTERED]",
 remember_digest: nil,
 admin: false,
 activation_digest: nil,
 activated: false,
 activated_at: nil>
>> micro.user.name
=> "Example User"
```

3. Save the micropost to the database. What are the values of the magic columns now?

```bash
>> micro.save
  TRANSACTION (0.2ms)  begin transaction
  Micropost Create (1.8ms)  INSERT INTO "microposts" ("content", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?) RETURNING "id"  [["content", "Lorem ipsum"], ["user_id", 4], ["created_at", "2024-01-12 06:40:16.421779"], ["updated_at", "2024-01-12 06:40:16.421779"]]
  TRANSACTION (0.1ms)  commit transaction
=> true
```


**13.1.2**

1. At the console, instantiate a micropost with no user id and blank content. Is it valid? What are the full error messages?

```bash
>> micro = Micropost.new
=> #<Micropost:0x0000000112f8e608 id: nil, content: nil, user_id: nil, created_at: nil, updated_at: nil>
>> micro.save
  TRANSACTION (0.1ms)  begin transaction
  TRANSACTION (0.0ms)  rollback transaction
=> false
>> micro.errors.full_messages
=> ["User must exist", "User can't be blank", "Content can't be blank"]
```

2. At the console, instantiate a second micropost with no user id and content that’s too long. Is it valid? What are the full error messages?

```bash
>> micro = Micropost.new(content: "h" * 200)
=> 
#<Micropost:0x000000013090bd80
...
>> micro.save
=> false
>> micro.errors.full_messages
=> ["User must exist", "User can't be blank", "Content is too long (maximum is 140 characters)"]
```

**13.1.3**
1. Set user to the first user in the database. What happens when you execute the command micropost = user.microposts.create(content: "Lorem ipsum")?

```bash
>> user = User.first
  User Load (4.0ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> 
#<User:0x0000000113a8c410
...
>> micropost = user.microposts.create(content: "Lorem ipsum")
  TRANSACTION (0.3ms)  begin transaction
  Micropost Create (1.8ms)  INSERT INTO "microposts" ("content", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?) RETURNING "id"  [["content", "Lorem ipsum"], ["user_id", 4], ["created_at", "2024-01-12 08:13:51.110237"], ["updated_at", "2024-01-12 08:13:51.110237"]]
  TRANSACTION (0.3ms)  commit transaction
=> 
#<Micropost:0x0000000119265178
...
```

2. The previous exercise should have created a micropost in the database. Confirm this by running user.microposts.find(micropost.id). What if you write micropost instead of micropost.id?

```bash
>> user.microposts.find(micropost.id)
  Micropost Load (0.4ms)  SELECT "microposts".* FROM "microposts" WHERE "microposts"."user_id" = ? AND "microposts"."id" = ? LIMIT ?  [["user_id", 4], ["id", 3], ["LIMIT", 1]]
=> 
#<Micropost:0x000000012f8565f8
 id: 3,
 content: "Lorem ipsum",
 user_id: 4,
 created_at: Fri, 12 Jan 2024 08:13:51.110237000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 08:13:51.110237000 UTC +00:00>
>> user.microposts.find(micropost)
/Users/nguyendinhchien/.gem/ruby/3.0.6/gems/activerecord-7.1.2/lib/active_record/relation/finder_methods.rb:508:in `find_one': You are passing an instance of ActiveRecord::Base to `find`. Please pass the id of the object by calling `.id`. (ArgumentError)
```
3. What is the value of user == micropost.user? How about user.microposts.first == micropost?
```bash
>> user == micropost.user
=> true
irb(main):009> user.microposts.first == micropost
  Micropost Load (0.5ms)  SELECT "microposts".* FROM "microposts" WHERE "microposts"."user_id" = ? ORDER BY "microposts"."id" ASC LIMIT ?  [["user_id", 4], ["LIMIT", 1]]
=> false
```

**13.1.4**

1. How does the value of Micropost.first.created_at compare to Micropost.last.created_at?

```bash
>> Micropost.first.created_at
  Micropost Load (5.7ms)  SELECT "microposts".* FROM "microposts" ORDER BY "microposts"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> Fri, 12 Jan 2024 06:40:16.421779000 UTC +00:00

>> Micropost.last.created_at
  Micropost Load (0.3ms)  SELECT "microposts".* FROM "microposts" ORDER BY "microposts"."id" DESC LIMIT ?  [["LIMIT", 1]]
=> Fri, 12 Jan 2024 08:13:51.110237000 UTC +00:00
```

2. What are the SQL queries for Micropost.first and Micropost.last? Hint: They are printed out by the console.

- Micropost.first : SELECT "microposts".* FROM "microposts" ORDER BY "microposts"."id" ASC LIMIT ?  [["LIMIT", 1]]
- Micropost.last : SELECT "microposts".* FROM "microposts" ORDER BY "microposts"."id" DESC LIMIT ?  [["LIMIT", 1]]

3. Let user be the first user in the database. What is the id of its first micropost? Destroy the first user in the database using the destroy method, then confirm using Micropost.find that the user’s first micropost was also destroyed.

```bash
>> user.destroy
  TRANSACTION (3.5ms)  begin transaction
  User Destroy (11.0ms)  DELETE FROM "users" WHERE "users"."id" = ?  [["id", 4]]
  TRANSACTION (0.0ms)  rollback transaction
```

**13.2.1**

1. As mentioned briefly in Section 7.3.3, helper methods like time_ago_in_words are available in the Rails console via the helper object. Using helper, apply time_ago_in_words to 3.weeks.ago and 6.months.ago.

```bash
>> helper.time_ago_in_words(3.weeks.ago)
=> "21 days"
>> helper.time_ago_in_words(6.months.ago)
=> "6 months"
```
2. What is the result of helper.time_ago_in_words(1.year.ago)?

```bash
>> helper.time_ago_in_words(1.year.ago)
=> "about 1 year"
```
3. What is the Ruby class for a page of microposts? Hint: Use the code in Listing 13.23 as your model, and call the class method on paginate with the argument page: nil.

```bash
>> user.microposts.paginate(page: nil).class
=> Micropost::ActiveRecord_AssociationRelation
```

**13.2.2**

1. See if you can guess the result of running (1..10).to_a.take(6). Check at the console to see if your guess is right.

```bash
>> (1..10).to_a.take(6)
=> [1, 2, 3, 4, 5, 6]
```

2. Is the to_a method in the previous exercise necessary?

```bash
(1..10).take(6)
=> [1, 2, 3, 4, 5, 6]
```

3. Faker has a huge number of occasionally amusing applications. By consulting the Faker documentation, learn how to print out a fake university name, a fake phone number, a fake Hipster Ipsum sentence, and a fake Chuck Norris fact.

```bash
irb(main):001> Faker::University.name
=> "Western Delaware Academy"
irb(main):002> Faker::PhoneNumber.phone_number
=> "1-599-502-2799 x067"
irb(main):003> Faker::Hipster.sentence
=> "Goth photo booth stumptown aesthetic venmo."
irb(main):004> Faker::ChuckNorris.fact
=> "Chuck Norris breaks RSA 128-bit encrypted codes in milliseconds."
```

**13.2.3**

1. Comment out the application code needed to change the two 'h1' lines in Listing 13.28 from green to red.

```bash
Turns red after removing the code below

<section class="user_info">
      <h1>
        <%#= gravatar_for @user %>
        <%#= @user.name %>
      </h1>
</section>
```

2. Update Listing 13.28 to test that will_paginate appears only once. Hint: Refer to Table 5.2.

```bash
assert_select 'div.pagination', count: 1
```

**13.3.1**

1. Why is it a bad idea to leave a copy of logged_in_user in the Users controller?

- Due to the DRY (Don't Repeat Yourself) principle in Rails, it is considered a poor practice to duplicate code.

**13.3.2**

1. Refactor the Home page to use separate partials for the two branches of the if-else statement.

```bash
- if logged_in?
  = render 'microposts'
- else
  = render 'welcome'
```

**13.3.3**

1. Use the newly created micropost UI to create the first real micropost. What are the contents of the INSERT command in the server log?

```bash 
Started POST "/microposts" for ::1 at 2024-01-15 10:09:03 +0700
Processing by MicropostsController#create as HTML
  Parameters: {"authenticity_token"=>"[FILTERED]", "micropost"=>{"content"=>"test"}, "commit"=>"Post"}
  User Load (15.5ms)  SELECT "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 4], ["LIMIT", 1]]
  ↳ app/helpers/sessions_helper.rb:22:in `current_user'
  TRANSACTION (0.0ms)  begin transaction
  ↳ app/controllers/microposts_controller.rb:7:in `create'
  Micropost Create (1.1ms)  INSERT INTO "microposts" ("content", "user_id", "created_at", "updated_at", "picture") VALUES (?, ?, ?, ?, ?) RETURNING "id"  [["content", "test"], ["user_id", 4], ["created_at", "2024-01-15 03:09:03.946702"], ["updated_at", "2024-01-15 03:09:03.946702"], ["picture", nil]]
  ↳ app/controllers/microposts_controller.rb:7:in `create'
  TRANSACTION (0.2ms)  commit transaction
  ↳ app/controllers/microposts_controller.rb:7:in `create'
Redirected to http://localhost:3000/
Completed 302 Found in 43ms (ActiveRecord: 26.0ms | Allocations: 3681)
```

2. In the console, set user to the first user in the database. Confirm that the values of Micropost.where("user_id = ?", user.id),
user.microposts, and user.feed are all the same. Hint: It’s probably easiest to compare directly using ==.

```bash
> user = User.first
  User Load (0.4ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> 
#<User:0x00000001267d5fd8
...
irb(main):002> Micropost.where("user_id = ?", user.id) == user.microposts
  Micropost Load (0.3ms)  SELECT "microposts".* FROM "microposts" WHERE "microposts"."user_id" = ? ORDER BY "microposts"."created_at" DESC  [["user_id", 1]]
  Micropost Load (0.2ms)  SELECT "microposts".* FROM "microposts" WHERE (user_id = 1) ORDER BY "microposts"."created_at" DESC
=> true
```

**13.3.4**

1. Create a new micropost and then delete it. What are the contents of the DELETE command in the server log?

```bash
Started DELETE "/microposts/55" for ::1 at 2024-01-15 10:13:47 +0700
  ActiveRecord::SchemaMigration Load (0.1ms)  SELECT "schema_migrations"."version" FROM "schema_migrations" ORDER BY "schema_migrations"."version" ASC
Processing by MicropostsController#destroy as HTML
  Parameters: {"authenticity_token"=>"[FILTERED]", "id"=>"55"}
  User Load (0.1ms)  SELECT "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 4], ["LIMIT", 1]]
  ↳ app/helpers/sessions_helper.rb:22:in `current_user'
  Micropost Load (0.1ms)  SELECT "microposts".* FROM "microposts" WHERE "microposts"."user_id" = ? AND "microposts"."id" = ? ORDER BY "microposts"."created_at" DESC LIMIT ?  [["user_id", 4], ["id", 55], ["LIMIT", 1]]
  ↳ app/controllers/microposts_controller.rb:29:in `correct_user'
  TRANSACTION (0.0ms)  begin transaction
  ↳ app/controllers/microposts_controller.rb:17:in `destroy'
  Micropost Destroy (0.7ms)  DELETE FROM "microposts" WHERE "microposts"."id" = ?  [["id", 55]]
  ↳ app/controllers/microposts_controller.rb:17:in `destroy'
  TRANSACTION (0.3ms)  commit transaction
  ↳ app/controllers/microposts_controller.rb:17:in `destroy'
Redirected to http://localhost:3000/
Completed 302 Found in 179ms (ActiveRecord: 3.0ms | Allocations: 253047)
```

2. Confirm directly in the browser that the line redirect_to request.referrer || root_url can be replaced with the line redirect_-
back(fallback_location: root_url). (This method was added in Rails 5.)

- It works fluently


**13.3.5**

1. For each of the four scenarios indicated by comments in Listing 13.56 (starting with “Invalid submission”), comment out application code to get the corresponding test to red, then uncomment to get back to green.

- It works fluently

2. Add tests for the sidebar micropost count (including proper pluralization). Listing 13.58 will help get you started.

```bash 
test "micropost sidebar count" do
    log_in_as(@user)
    get root_path
    assert_match "#{@user.microposts.count} microposts", response.body
    # User with zero microposts
    other_user = users(:malory)
    log_in_as(other_user)
    get root_path
    assert_match "0 microposts", response.body
    other_user.microposts.create!(content: "A micropost")
    get root_path
    assert_match "1 micropost", response.body
end
```

**13.4.1**

1. Upload a micropost with attached image. Does the result look too big? (If so, don’t worry; we’ll fix it in Section 13.4.3.)

- Yes, it's too big

2. Following the template in Listing 13.64, write a test of the image uploader in Section 13.4. As preparation, you should add an image to the fixtures directory using Listing 13.63. The additional assertions in Listing 13.64 check both for a file upload field on the Home page and for a valid image attribute on the micropost resulting from valid submission. Note the use of the special fixture_file_upload method for uploading files as fixtures inside tests. Hint: To check for a valid image attribute, use the assigns method mentioned in Section 11.3.3 to access the micropost in the create action after valid submission

- Running success

**13.4.2**

1. What happens if you try uploading an image bigger than 5 megabytes?

```bash
'Maximum file size is 4MB. Please choose a smaller file.'
```

2. What happens if you try uploading a file with an invalid extension?

```bash
Picture You are not allowed to upload "pdf" files, allowed types: jpg, jpeg, gif, png
```

**13.4.3**

1. Upload a large image and confirm directly that the resizing is working. Does the resizing work even if the image isn’t square?

- Yes, its still working.


**13.3.4** 
Cannot deploy now

CHAPTER 14

**14.1.1**

1. For the user with id equal to 1 from Figure 14.7, what would the value of user.following.map(&:id) be? (Recall the map(&:method_name) pattern from Section 4.3.2; user.following.map(&:id) just returns the array of ids.)

```bash
>> user.following.map(&:id)
  User Load (0.3ms)  SELECT "users".* FROM "users" INNER JOIN "relationships" ON "users"."id" = "relationships"."followed_id" WHERE "relationships"."follower_id" = ?  [["follower_id", 1]]
=> []
```

2. By referring again to Figure 14.7, determine the ids of user.following for the user with id equal to 2. What would the value of user.following.map(&:id) be for this user?

```bash 
[1]
```

**14.1.2**

1. Using the create method from Table 14.1 in the console, create an active relationship for the first user in the database where the followed id is the second user.

```bash
> user.active_relationships.create(followed_id: User.find(4))
  User Load (0.2ms)  SELECT "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 4], ["LIMIT", 1]]
  TRANSACTION (0.2ms)  begin transaction
  User Load (0.5ms)  SELECT "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
  TRANSACTION (0.0ms)  rollback transaction
=> #<Relationship:0x000000012a8c45a8 id: nil, follower_id: 1, followed_id: nil, created_at: nil, updated_at: nil>
```

2. Confirm that the values for active_relationship.followed and active_relationship.follower are correct.

```bash
>> active_relationship.followed
 => nil

>> active_relationship.follower
 =>
#<User:0x0000000105e16260
...
```

**14.1.3**

1. Verify by commenting out the validations in Listing 14.5 that the tests still pass. (This is a change as of Rails 5, and in previous versions of Rails the validations are required. We’ll plan to leave them in for completeness, but it’s worth bearing in mind that you may see these validations omitted in other people’s code.)

```bash
class Relationship < ApplicationRecord
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  #validates :follower_id, presence: true
  #validates :followed_id, presence: true
end

$ rails test
Finished in 1.40512s
57 tests, 306 assertions, 0 failures, 0 errors, 0 skips
```

**14.1.4**

1. At the console, replicate the steps shown in Listing 14.9.

```bash
>> user1 = User.find_by(id: 3)
  User Load (4.0ms)  SELECT "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 3], ["LIMIT", 1]]
=> 
#<User:0x0000000107af0160
...

>> user2 = User.find_by(id: 4)
  User Load (0.3ms)  SELECT "users".* FROM "users" WHERE "users"."id" = ? LIMIT ?  [["id", 4], ["LIMIT", 1]]
=> 
#<User:0x0000000107accd50
...

>> user1.following?(user2)
  User Exists? (2.0ms)  SELECT 1 AS one FROM "users" INNER JOIN "relationships" ON "users"."id" = "relationships"."followed_id" WHERE "relationships"."follower_id" = ? AND "users"."id" = ? LIMIT ?  [["follower_id", 3], ["id", 4], ["LIMIT", 1]]
=> false


>> user1.unfollow(user2)
  TRANSACTION (0.2ms)  begin transaction
  Relationship Delete All (0.8ms)  DELETE FROM "relationships" WHERE "relationships"."follower_id" = ? AND "relationships"."followed_id" = ?  [["follower_id", 3], ["followed_id", 4]]
  TRANSACTION (0.0ms)  commit transaction
=> 
[#<User:0x0000000107accd50

```

2. What is the SQL for each of the commands in the previous exercise?

```bash
1. SELECT 1 AS one FROM "users" INNER JOIN "relationships" ON "users"."id" = "relationships"."followed_id" WHERE "relationships"."follower_id" = ? AND "users"."id" = ? LIMIT ?  [["follower_id", 3], ["id", 4], ["LIMIT", 1]]

2. DELETE FROM "relationships" WHERE "relationships"."follower_id" = ? AND "relationships"."followed_id" = ?  [["follower_id", 3], ["followed_id", 4]]

3. SELECT 1 AS one FROM "users" INNER JOIN "relationships" ON "users"."id" = "relationships"."followed_id" WHERE "relationships"."follower_id" = ? AND "users"."id" = ? LIMIT ?  [["follower_id", 3], ["id", 4], ["LIMIT", 1]]
```

**14.1.5**


1. At the console, create several followers for the first user in the database (which you should call user). What is the value of user.followers.-map(&:id)?

```bash
>> user2.followers.map(&:id)
  User Load (0.5ms)  SELECT "users".* FROM "users" INNER JOIN "relationships" ON "users"."id" = "relationships"."follower_id" WHERE "relationships"."followed_id" = ?  [["followed_id", 3]]
=> [3]
```

2. Confirm that user.followers.count matches the number of followers you created in the previous exercise.

```bash
> user2.followers.count
  User Count (2.3ms)  SELECT COUNT(*) FROM "users" INNER JOIN "relationships" ON "users"."id" = "relationships"."follower_id" WHERE "relationships"."followed_id" = ?  [["followed_id", 1]]
=> 1
```

3. What is the SQL used by user.followers.count? How is this different from user.followers.to_a.count? Hint: Suppose that the
user had a million followers.

```bash

User Count (2.3ms)  SELECT COUNT(*) FROM "users" INNER JOIN "relationships" ON "users"."id" = "relationships"."follower_id" WHERE "relationships"."followed_id" = ?  [["followed_id", 1]]

user2.followers.to_a.count
=> 1

```

**14.2.1**

1. Using the console, confirm that User.first.followers.count matches the value expected from Listing 14.14.

```bash
>> User.first.followers.count
  User Load (0.3ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
  User Count (1.1ms)  SELECT COUNT(*) FROM "users" INNER JOIN "relationships" ON "users"."id" = "relationships"."follower_id" WHERE "relationships"."followed_id" = ?  [["followed_id", 1]]
=> 38

Wrong result because running seed.
```

2. Confirm that User.first.following.count is correct as well.

```bash
 User.first.following.count
  User Load (0.2ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
  User Count (0.2ms)  SELECT COUNT(*) FROM "users" INNER JOIN "relationships" ON "users"."id" = "relationships"."followed_id" WHERE "relationships"."follower_id" = ?  [["follower_id", 1]]
=> 49
```

**14.2.2**

1. Verify that /users/2 has a follow form and that /users/5 has an unfollow form. Is there a follow form on /users/1?

```bash
/users/2 with follow form

/users/5 with unfollow form

/users/1 without any form

The /users/1 page doesn't have any form because it's the current user, so he can't follow or unfollow himself
```

2. Confirm in the browser that the stats appear correctly on the Home page and on the profile page.

- The stats appear correctly on the Home page and on the profile page

3. Write tests for the stats on the Home page. Hint: Add to the test in Listing 13.28. Why don’t we also have to test the stats on the profile page?

```bash

# test/integration/user_profile_test.rb

require 'test_helper'

class UsersProfileTest < ActionDispatch::IntegrationTest
  include ApplicationHelper

  def setup
    @user = users(:michael)
  end

  test "profile display" do
    get user_path(@user)
    assert_template 'users/show'
    assert_select 'title', full_title(@user.name)
    assert_select 'h1', text: @user.name
    assert_select 'h1>img.gravatar'
    assert_match @user.microposts.count.to_s, response.body
    assert_select 'div.pagination', count: 1
    @user.microposts.paginate(page: 1).each do |micropost|
      assert_match micropost.content, response.body
    end
    assert_match @user.followers.count.to_s, response.body
    assert_match @user.following.count.to_s, response.body
  end
end

```

**14.2.4**

1. Follow and unfollow /users/2 through the web. Did it work?

- It works fluently!

2. According to the server log, which templates are rendered in each case?

```bash
  Rendered users/show.html.haml within layouts/application (Duration: 24.6ms | Allocations: 15453)
  Rendered layouts/_rails_default.html.haml (Duration: 21.8ms | Allocations: 10120)
  Rendered layouts/_shim.html.haml (Duration: 0.7ms | Allocations: 8)
  Rendered layouts/_header.html.haml (Duration: 2.2ms | Allocations: 298)
  Rendered layouts/_footer.html.haml (Duration: 0.4ms | Allocations: 80)
  Rendered layout layouts/application.html.haml (Duration: 52.9ms | Allocations: 26795)
```

**14.2.5**

1. Unfollow and refollow /users/2 through the web. Did it work?

- It works fluently!

2. According to the server log, which templates are rendered in each case?

```bash
  Rendered users/show.html.haml within layouts/application (Duration: 24.6ms | Allocations: 15453)
  Rendered layouts/_rails_default.html.haml (Duration: 21.8ms | Allocations: 10120)
  Rendered layouts/_shim.html.haml (Duration: 0.7ms | Allocations: 8)
  Rendered layouts/_header.html.haml (Duration: 2.2ms | Allocations: 298)
  Rendered layouts/_footer.html.haml (Duration: 0.4ms | Allocations: 80)
  Rendered layout layouts/application.html.haml (Duration: 52.9ms | Allocations: 26795)
```

**14.2.6**

1. By commenting and uncommenting each of the lines in the respond_to
blocks (Listing 14.36), verify that the tests are testing the right things.
Which test fails in each case?

```bash
test_should_follow_a_user_the_standard_way

test_should_unfollow_a_user_the_standard_way
```

2. What happens if you delete one of the occurrences of xhr: true in
Listing 14.40? Explain why this is a problem, and why the procedure in
the previous exercise would catch it.

- The test is still green

**14.3.1**

1. Assuming the micropost’s ids are numbered sequentially, with larger numbers being more recent, what would user.feed.map(&:id) re-turn for the feed shown in Figure 14.22? Hint: Recall the default scope from Section 13.1.4.

```bash
user.feed.map(&:id)
  Micropost Load (2.9ms)  SELECT "microposts".* FROM "microposts" WHERE (user_id IN (SELECT followed_id FROM relationships
                     WHERE  follower_id = 1)
                     OR user_id = 1) ORDER BY "microposts"."created_at" DESC
=> 
[600,
 599,
 598,
 597,
 595,
 594,
 593,
 592,
 591,
 589,
 588,
 587,
 586,
 585,
 583,
 582,
 581,
 580,
 579,
 577,
:
```

**14.3.2**

1. In Listing 14.44, remove the part of the query that finds the user’s own posts. Which test in Listing 14.42 breaks?

```bash
  Micropost.where("user_id IN (?)", id)

  michael.microposts.each do |post_self|
    assert michael.feed.include?(post_self)
  end
```

2. In Listing 14.44, remove the part of the query that finds the followed users’ posts. Which test in Listing 14.42 breaks?

```bash
    Micropost.where("user_id = ?", following_ids)

    lana.microposts.each do |post_following|
      assert michael.feed.include?(post_following)
    end
```

3. How could you change the query in Listing 14.44 to have the feed erroneously return microposts of unfollowed users, thereby breaking the third test in Listing 14.42? Hint: Returning all the microposts would do the trick.

```bash
    Micropost.all

    archer.microposts.each do |post_unfollowed|
      assert_not michael.feed.include?(post_unfollowed)
    end
```

**14.3.3**

1. Note that Listing 14.49 escapes the expected HTML using CGI.escapeHTML (which is closely related to the CGI.escape method
we used in Section 11.2.3 to escape URLs). Why is escaping the HTML necessary in this case? Hint: Try removing the escaping and carefully inspect the page source for the micropost content that doesn’t match. Using the search feature of your terminal shell (Cmd-F on Ctrl-F on most systems) to find the word “sorry” may prove particularly helpful.

```bash
assert_match CGI.escapeHTML(micropost.content), response.body
```

2. The code in Listing 14.47 can be expressed directly in Rails using a socalled inner join using the join method. By running the tests, show that the code in Listing 14.50 returns a valid feed.11 What is the SQL query generated by this code? (Hint: Run User.first.feed in the console.)

```bash
User.first.feed
  User Load (0.7ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
  Micropost Load (0.6ms)  SELECT "microposts".* FROM "microposts" WHERE (user_id IN (SELECT followed_id FROM relationships
                     WHERE  follower_id = 1)
                     OR user_id = 1) /* loading for pp */ ORDER BY "microposts"."created_at" DESC LIMIT ?  [["LIMIT", 11]]
=> 
[#<Micropost:0x00000001080a7158
  id: 600,
  content: "1212",
  user_id: 6,
  created_at: Mon, 15 Jan 2024 04:17:21.242610000 UTC +00:00,
  updated_at: Mon, 15 Jan 2024 04:17:21.242610000 UTC +00:00,
  picture: nil>,
 #<Micropost:0x00000001080a7090
  id: 599,
  content: "1212",
  user_id: 5,
  created_at: Mon, 15 Jan 2024 04:17:21.240495000 UTC +00:00,
  updated_at: Mon, 15 Jan 2024 04:17:21.240495000 UTC +00:00,
  picture: nil>,
 #<Micropost:0x00000001080a6fc8
  id: 598,
  content: "1212",
  user_id: 4,
  created_at: Mon, 15 Jan 2024 04:17:21.238582000 UTC +00:00,
  updated_at: Mon, 15 Jan 2024 04:17:21.238582000 UTC +00:00,
:
```
