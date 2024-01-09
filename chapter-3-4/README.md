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

