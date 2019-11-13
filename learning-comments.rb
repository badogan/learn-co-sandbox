git init
git add <filename> OR git add .
git commit -m "commit notes"
After the initial commit, you can add and commit at once with:
git commit -am "some notes"
Process: git status
git clone 
git remote
git remote show origin
IMPORANT: This is how it is initiated so that my local repo knows where to push!
git remote add origin <git@github.com:badogan/gittests-remove-at-some-point.git>
PROCESS: git remote -v :to see some details on the origin
THEREAFTER...
git push -u origin master OR git push
Process: Forking from somebody elses code as a at-that-moment copy to my account
git remote #set the destination of a repo
git push #
#=======================
git branch #shows the local branches
git remote #list of all the remotes. Usually there is only one and it is origin
git branch -a #lists all remotes
#=========
git push origin new-branch-name #a locally created branch new-branch-name is pushed to origin
Reverse:
if we clone a repo, we take remote tracking branches as well.
  we can update the remote branch (???) using git fetch
#=============
Scenario: Let's suppose you and a collaborator are having lunch and you mention that you wanted to start some work in master, but that you weren't sure how to start because the code is so messy (that happens!). The collaborator has great news: they just updated that messy code so that it's a joy to work with.
Description: In this case, you'd like to start working from their branch instead of the default, master. Your collaborator pushes up their local branch to the repository under the name my-friends-branch.
Action: You go back to your computer and then type git fetch. This tells your clone of the repo to refresh information in the remote repository. Git will tell you that there's now a remote branch available called...origin/my-friends-branch.
Details: if you do git checkout origin/my-friends-branch, Git will:
1. Establish a remote tracking branch called (remotes/origin/my-friends-branch) that points to origin/my-friends-branch
2. Establish a local tracking branch (my-friends-branch) that tracks (remotes/origin/my-friends-branch)
3. Put you "on" the local tracking branch (my-friends-branch)
4. Because Git can trace how to get from your local tracking branch to the remote tracking branch back to the original remote branch, if you make a commit on this branch and then type git push, Git will send your change to the remote repository so that other collaborators can get your change and build on it!

x="dnm"
puts x
print x 
p x 
#=======
chance_of_rain = 0.2
if chance_of_rain <= 0.25
  puts "Pack a sun shelter!"
elsif (chance_of_rain > 0.25 && chance_of_rain < 0.75)
  puts "Pack an umbrella!"
else
  puts "Stay home and read Hegel."
end
#========
this_year = Time.now.year
puts "Hey, it's not 2020!" unless this_year == 2020
p this_year
#========
name="Alice"
case name 
 
  when "Alice" # translated: when name == "Alice"
    puts "Hello, Alice!"
  when "The White Rabbit"
    puts "Don't be late, White Rabbit"
  when "The Mad Hatter"
    puts "Welcome to the tea party, Mad Hatter"
  when "The Queen of Hearts"
    puts "Please don't chop off my head!"
  else 
    puts "Whoooo are you?"
end
#==================
count = 0 # A bit of data defined outside the loop
while count < 3 do # A Boolean expression using the bit of data
  puts "I am the #{count}, I love to count!" # Work
  count = count + 1 # A bit of work that moves the bit of data closer to being false
end
#==============
magic_exit_number = 7
count = 0
while count < 10 do
  break if count >= magic_exit_number
  puts "I am the #{count}, I love to count!" # Work
  count = count + 1
  count +=1 
end
#=========
magic_exit_number = 7
count = 0
while count < 10 && count != magic_exit_number do
  puts "I am the #{count}, I love to count!" # Work
  count = count + 1
end
#==============
3.times do
  puts "I ran."
end
#======
count = 0
n = 3
loop do
  break if count >= n
  puts "I ran."
  count += 1
end
#========
counter = 0
until counter == 20
  puts "The current number is less than 20." + counter.to_s 
  counter += 1
end
#=========
# method name      first_parameter, second_parameter
def greeting_programmer(name = 'Basri', language)
  puts "Hello, #{name}. We heard you are a great #{language} programmer."
end
 
greeting_programmer("Ruby")
# > Hello, Maria. We heard you are a great Ruby programmer.
 
greeting_programmer("Steven", "Elixir")
# > Hello, Steven. We heard you are a great Elixir programmer.
#============
def get_stock_market_data(date)
  return nil if is_a_weekend?(date)
  # Imagine an expensive, slow calculation hereafter
end
#===========
$species = "human"
 
def visit_universal(name)
  visit_wizarding_world(name)
  visit_springfield_usa(name)
end
 
def visit_wizarding_world(name)
  simple_name = "Hogwart's"
  puts "#{name}, a #{$species}, visits #{simple_name}"
end
 
def visit_springfield_usa(name)
  simple_name = "the home of 'The Simpsons'"
  puts "#{name}, a #{$species}, visits #{simple_name}"
end
 
visit_universal("Byron")
#=============
english_bands_by_city = {
 :liverpool =>   "The Beatles",
 :manchester =>  "The Smiths",
 :coventry =>    "Delia Derbyshire and the BBC Radiophonic Band",
 :london =>      "Ziggy Stardust and the Spiders from Mars"
}
puts english_bands_by_city
#====================
the_beatles = [ "John Lennon", "Paul McCartney", "Ringo Starr", "George Harrison"]
puts the_beatles
#===================
english_music_by_city = {
  :manchester => [
    {
      :band_name => "The Smiths",
      :member_names => ["Morrissey", "Johnny", "Andy", "Mike"]
    },
    {
      :band_name => "Joy Division",
      :member_names => ["Peter", "Stephen", "Bernard", "Ian"]
    },
  ]
}
english_music_by_city[:manchester][0][:band_name] #=> "The Smiths"
english_music_by_city[:manchester][0][:member_names] #=> ["Morrissey", "Johnny", "Andy", "Mike"]
 
puts "There were #{english_music_by_city[:manchester][0][:member_names].length} members in #{english_music_by_city[:manchester][0][:band_name]}"
puts english_music_by_city[:manchester][0][:member_names]
p english_music_by_city[:manchester][0][:member_names]
puts "10#=============="
p the_beatles
#==============
famous_cats = ["lil' bub", "grumpy cat", "Maru"]
famous_cats << "nala cat" #same - add to the end of the array 
famous_cats.push("nala cat") #same - add to the end of the array 
famous_cats.unshift("nala cat") # add to the front of the array 
maru_cat = famous_cats.pop # move (not copy) the last item in the array ( and if u want assign it to a variable) 
lil_bub = famous_cats.shift # move (not copy) the 1st item in the array ( and if u want assign it to a variable)
famous_cats.index("lil") #would return the index of lil in the array 
famous_cats[-1] #would provide the last item in the array 
#================
sorted_cats = famous_cats.sort #u don't need unsorted version =>u can call sort!
reverse_sorted_cats = famous_cats.reverse #don't need unsorted ver =>u can call reverse!
famous_cats.first
famous_cats.last 
famous_cats.include?("Garfield")
famous_cats.size #same as famous_cats.length 
#=============
def using_push(my_Array, my_String)
  my_Array.push(my_String)
end 

def using_unshift(m_Array,m_String)
  m_Array.unshift(m_String)
end

def using_pop(m_Array)
  m_Array.pop
end

def using_shift(m_Array)
  m_Array.shift 
end 

def shift_with_args(m_Array,m_count)
  if m_count <= 0 
    return m_Array
  end
  m_count.do
    m_Array.shift
  end
  return m_Array
end 

def using_concat(1st_Array,2nd_Array)
  1st_Array.concat(2nd_Array)
end

def using_insert(m_Array,new_element)
  m_Array[4]=new_element
end

def using uniq(m_Array)
  m_Array.uniq
end

def usning_flatten(multiple_Arrays_in_one_Array)
  multiple_Arrays_in_one_Array.flatten
end

def using_delete(m_Array,m_String)
  m_Array.delete(m_String)
end

def using_delete_at(m_Array,m_Index)
  m_Array.delete_at(m_Index)
end
#=============================
["This", "is", "a", "test"].join('*') #=> "This*is*a*test"
%w[this is also a test] #=> ["this", "is", "also", "a", "test"]
%w[this is also a test].join(" ").capitalize #=> "This is also a test"
"When in the course".split(" ") #=> ["When", "in", "the", "course"]
#===============
for i in 0..3 #
    puts i
end
1..10    # Creates a range from 1 to 10 inclusive
1...10   # Creates a range from 1 to 9
(1..10).to_a -> an_array 
puts an_array
#==================
def output_array_elements(array)
  counter = 0
 
  while array[counter] do #an alternative: while counter < array.length do
    puts array[counter]
    counter += 1
  end
end
#=============
array1 = [1,2,3,4,5]
array1.length.times {|index|
  puts array1[index]
}
#================
new_hash = {
  :created => Time.now,
  :message => "Hello world!"
}
new_hash2 = {
  created:Time.now,
  message:"Hello world"
}
second_new_hash = {} #same as: second_new_hash = Hash.new
#=====
grocery_items = {:apples => 10, :pears => 4, :peaches => 2, :plums => 13}
#=> {:apples=>10, :pears=>4, :peaches=>2, :plums=>13}
 if grocery_items[:rambutan]
  puts "Rambutan present!"
else
  puts "No rambutan."
end# No rambutan.
#=============
"I am a string".object_id #changes each time it is run
:I_am_another_symbol.object_id #refers to always the same memorl location
#==========
school = {
  instructors: ["Ian", "Johann", "Alex"],
  students: ["Andrew", "Howard", "Terrance", "Daniel", "Rachel", "Natalie"]
}
school[:instructors][0]
#=========
tv_show_characters = {
  "Homer Simpson" => {name: "Homer Simpson", occupation: "Nuclear Safety Inspector", hobbies: ["Watching TV", "Eating donuts"]},
  "Jon Snow" => {name: "Jon Snow", occupation: "King in the North", hobbies: ["Fighting white walkers", "Knowing nothing"]},
  "Mr. Rogers" => {name: "Mr. Rogers", occupation: "Neighbor", hobbies: ["Making children feel loved and appreciated", "Singing songs"]}
}
tv_show_characters["Homer Simpson"] #=> {name: "Homer Simpson", occupation: "Nuclear Safety Inspector", hobbies: ["Watching TV", "Eating donuts"]}
tv_show_characters["Jon Snow"][:occupation] #=> "King in the North"
tv_show_characters["Mr. Rogers"][:hobbies][1] #=> "Singing songs"
#===================
def monopoly_with_fourth_tier
  # When you start writing the implementation for this method, copy the Hash
  # you built in the previous method. Run the tests. They will fail, but
  # they'll guide you in how to modify what you just did to have more
  # complexity.
  monopoly =  {
  :railroads=>
  {
    :pieces=>4,
    :rent_in_dollars=>
    {
      :one_piece_owned=>25,
      :two_pieces_owned=>50,
      :three_pieces_owned=>100,
      :four_pieces_owned=>200
    },
    :names=>
    {
      :reading_railroad=>
      {
        "mortgage_value"=>"$100"
      },
      :pennsylvania_railroad=>
      {
        "mortgage_value"=>"$200"
      },
      :b_and_o_railroad=>
      {
        "mortgage_value"=>"$400"
      },
      :shortline_railroad=>
      {
        "mortgage_value"=>"$800"
      }
    }
  }
}
end
#======
def adding_matz
# add the following information to the top level of programmer_hash
# :yukihiro_matsumoto => {
#   :known_for => "Ruby",
#    :languages => ["LISP", "C"]
# }

	programmer_hash = 
 		{
        :grace_hopper => {
          :known_for => "COBOL",
          :languages => ["COBOL", "FORTRAN"]
        },
        :alan_kay => {
          :known_for => "Object Orientation",
          :languages => ["Smalltalk", "LISP"]
        },
        :dennis_ritchie => {
          :known_for => "Unix",
          :languages => ["C"]
        }
    }

  temp_hash = {:yukihiro_matsumoto => 
    {
    :known_for => "Ruby",
    :languages => ["LISP", "C"]
    }
  }
  
  programmer_hash.merge(temp_hash)
end

def changing_alan
	programmer_hash = 
 		{
        :grace_hopper => {
          :known_for => "COBOL",
          :languages => ["COBOL", "FORTRAN"]
        },
        :alan_kay => {
          :known_for => "Object Orientation",
          :languages => ["Smalltalk", "LISP"]
        },
        :dennis_ritchie => {
          :known_for => "Unix",
          :languages => ["C"]
        }
     }
     #change what Alan Kay is :known_for to the value of the alans_new_info variable. 
     alans_new_info = "GUI"
     programmer_hash[:alan_kay][:known_for] = alans_new_info
  return programmer_hash   
end

def adding_to_dennis
	programmer_hash = 
 		{
        :grace_hopper => {
          :known_for => "COBOL",
          :languages => ["COBOL", "FORTRAN"]
        },
        :alan_kay => {
          :known_for => "Object Orientation",
          :languages => ["Smalltalk", "LISP"]
        },
        :dennis_ritchie => {
          :known_for => "Unix",
          :languages => ["C"]
        }
     }
  dennis_new_lang = "Assembly"
  #dennis_current_lang = programmer_hash[:dennis_ritchie][:]
  programmer_hash[:dennis_ritchie][:languages][1] = dennis_new_lang
  #puts programmer_hash
  return programmer_hash
end
#==========================
# Examples inspired by David Foster Wallace's # (2/21/1962 to 9/12/2008) _Infinite Jest_

ENNET_HOUSE = [
  "Don Gately",
  "Joelle van Dyne",
  "Pat M.",
  "Kate Gompert",
  "Bruce Green"
]

ENFIELD_TENNIS_ACADEMY = [
  "Hal Incandenza",
  "Lyle",
  "Gerhard Schtitt",
  "Mario Incandenza",
  "Michael Pemulis"
]

def assembled_matrix
  # Build an array that contains (or, "nests") the residents of The Ennet House
  # and the Enfield Tennis Academy as provided by the constants
  [ENNET_HOUSE,ENFIELD_TENNIS_ACADEMY]
end

def array_literal_matrix
  # Using Array literal syntax only, build a nested array that uses the data in
  # side the ENNET_HOUSE and ENFIELD_TENNIS_ACADEMY Arrays but sorts
  # alphabetically by the first character.
  [ENNET_HOUSE.sort,ENFIELD_TENNIS_ACADEMY.sort]
end

def matrix_lookup(matrix, row, column)
  # Return the matrix's content at row and column
  matrix[row][column]
end

def matrix_update(matrix, row, column, new_value)
  # Update the matrix location at row and column to have the value of new_value
  # Return the updated matrix
  matrix[row][column] = new_value
  return matrix
end
#===================================================
def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  i=0 
  output_array=[]
  while src[i] do
    first = src[i][0]
    second =src[i][1]
    output_array[i] = "I love " + first + " and "+ second +" on my pizza"
    i=i+1 
  end
  puts output_array
  return output_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  i=0 
  output_array=[]
  while src[i] do
    output_array[i] = src[i].max
    i=i+1 
  end
  puts output_array
  return output_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  i=0 
  sum=0
  while src[i] do
    first = src[i][0]
    second =src[i][1]
    if (first %2 == 0) && (second %2 == 0)
      sum = first + second + sum
    end
    i=i+1 
  end
  puts sum
  return sum
end
test_array=[[1,2],[3,4],[6,8]]
#join_ingredients(test_array)
#find_greater_pair(test_array)
total_even_pairs(test_array)
#=============================
def i_hear_a_sick_sound(passengers_sounds)
  i = 0 # set up a i for the enumeration of the passengers collection
  while i < passengers_sounds.length do # a loop for each passenger
    # Stop enumerating and return true if any passenger is
    # coughing or sneezing
    if (passengers_sounds[i] == "coughing" || passengers_sounds[i] == "sneezing")
      return true
    end
    i += 1
  end
  return false
end
#===================
#===================
# My Code here....
def map_to_negativize(source_array)
  index = 0 
  while index < source_array.length do
    source_array[index]=-source_array[index]
    index +=1
  end
  return source_array
end

def map_to_no_change(source_array)
  index = 0 
  while index < source_array.length do
    source_array[index]=source_array[index]
    index +=1
  end
  return source_array
end

def map_to_double(source_array)
  index = 0 
  while index < source_array.length do
    source_array[index]=2*source_array[index]
    index +=1
  end
  return source_array
end

def map_to_square(source_array)
  index = 0 
  while index < source_array.length do
    source_array[index]=source_array[index]**2 
    index +=1
  end
  return source_array
end

def reduce_to_total(source_array, starting_point=0)
  index = 0 ; total = starting_point
  while index < source_array.length do
    total = total + source_array[index]
    index +=1
  end
  return total
end

def reduce_to_all_true(source_array)
  index = 0
  while index < source_array.length do
    if source_array[index]
      index += 1 
    else
      return false
    end
  end
  return true
end

def reduce_to_any_true(source_array)
  index = 0
  while index < source_array.length do
    if source_array[index]
      return true
    else
      index +=1
    end
  end
  return false
end
======================
def map_to_negativize(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( source_array[i] * -1 ) # <== Unique work
    i += 1
  end
  return new
end
 
def map_to_no_change(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( source_array[i] ) # <== Unique work
    i += 1
  end
  return new
end
 
def map_to_double(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( source_array[i] * 2 ) # <== Unique work
    i += 1
  end
  return new
end
 
def map_to_square(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push( source_array[i] * source_array[i] ) # <== Unique work
    i += 1
  end
  return new
end
#===========
method_using_block { puts "hi" }
 
# Is the same as...
method_using_block do
  puts "hi"
end
#=====
def make_sandwich(element1, element2)
  base = "A #{element1} and #{element2}"
  puts base
  yield
  base
end
 
make_sandwich("chicken", "a sense of malaise") do |innards|
  puts "making some tasty stuff..."
end #=> "A chicken and a sense of malaise"
#===========
def make_sandwich(element1, element2)
  base = "A #{element1} and #{element2}"
  yield(base)
end
 
make_sandwich("gator", "gumbo") do |innards|
  "#{innards} on rye"
end #=> "A gator and gumbo on rye"
#==========
def make_sandwich(element1, element2)
  yield("A #{element1} and #{element2} sandwich")
end
 
make_sandwich("grits", "abject terror") { |innards| "#{innards} on rye" }
#=> "A grits and abject terror sandwich on rye"
#=======
def make_sandwich(element1, element2)
  yield("A #{element1} and #{element2} sandwich")
end
 
# Wheat, sure!
make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |b| "#{b} on wheat" }
 
# Bueno!
make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |b| "#{b} on tortilla" }
 
# Lewis Carroll's Kitchen
make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |b| "#{b.reverse} on #{"bread".reverse}" }
 
#===============
[10, 20, 30, 40].map{ |num| num * 2 } #=> [20, 40, 60, 80]
[10, 20, 30, 40].reduce(0){ |total, num| total + num } #=> 100
[10, 20, 30, 40].reduce(100){ |total, num| total + num } #=> 200
[10, 20, 30, 40].select{ |num| num > 25 } #=> [30, 40]
[10, 20, 30, 40].reject{ |num| num > 25 } #=> [10, 20]
[10, 20, 30, 40].filter{ |num| num > 25 } #=> [30, 40]
#==========
oppressed_workers = ["Dopey", "Sneezy", "Happy", "Angry", "Doc", "Lemonjello", "Sleepy" ]
oppressed_workers.each do |oppressed_worker|
   puts "#{oppressed_worker.capitalize} wants to start a union!"
end
#====
def sum_array(number_array)
  total = 0
  number_array.each{ |num| total += num }
  total
end
sum_array([1,2,3]) #=> 6
#======