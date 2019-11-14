def fourth_challenge
  epic_tragedy = {
   :montague => {
      :patriarch => {name: "Lord Montague", age: "53"},
      :matriarch => {name: "Lady Montague", age: "54"},
      :hero => {name: "Romeo", age: "15", status: "alive"},
      :hero_friends => [
         {name: "Benvolio", age: "17", attitude: "worried"},
         {name: "Mercutio", age: "18", attitude: "hot-headed"}
      ]
   }, 
   :capulet => {
      :patriarch => {name: "Lord Capulet", age: "50"},
      :matriarch => {name: "Lady Capulet", age: "51"},
      :heroine => {name: "Juliet", age: "15", status: "alive"},
      :heroine_friends => [
          {name: "Steven", age: "30", attitude: "confused"},
          {name: "Nurse", age: "44", attitude: "worried"}
      ]
   }
}
end

index=0
while index < fourth_challenge[:capulet][:heroine_friends].length do 
  p fourth_challenge[:capulet][:heroine_friends][index][:age].to_i
  index +=1
end

look_for=:heroine_friends ; total=0
fourth_challenge[:capulet].map {|hash_key,hash_value|
# p key
 if hash_key == look_for
   hash_value.each { |array_member|
   total += array_member[:age].to_i
   }
 end
}

p total

#Basri - simple array tests
def BasriAddAnElementToAnArray(hash,key,new_element)
#Objective: Function appends a key, value pair with a new element
#Input: hash, key, element
#       value associated with the key is an array
#Output: updated hash
hash[key][hash[key].length] = new_element
hash
end

def BasriAddANewTownWithInitialKeysValues(current_full_hash,new_town_name)
#Objective: Function appends a new set of keys,values for the new town 
#Input:     current_full_hash is the hash to be updated with the new town key,value pairs
#           new_town_name
#Output:    updated current_full_hash
current_full_hash[new_town_name] = {
  :population=>nil,
  :important_people=>[]
}
current_full_hash #Now updated!
end

def BasriAddANewRootKeyValuePair(input_hash,new_initial_key,new_initial_value)
#Objective:   Function adds a new key,value pair to the top level on the provided hash
#Input:       current_full_hash is the hash to be updated with new key,value pair
#             new_key is the new key
#             new_value is the new value
#Output:      full_hash_updated with the new key,value pair
input_hash[new_initial_key]=new_initial_value
input_hash
end

def basri_function
towns_details = {}
towns_details = BasriAddANewTownWithInitialKeysValues(towns_details,:twyford)
towns_details = BasriAddANewTownWithInitialKeysValues(towns_details,:sonning)
towns_details = BasriAddANewTownWithInitialKeysValues(towns_details,:charvil)
towns_details[:twyford][:population] = 5000
towns_details[:sonning][:important_people] = ["Clooneys"]
towns_details[:twyford] = BasriAddAnElementToAnArray(towns_details[:twyford],:important_people,"The Dogans")
towns_details[:twyford] = BasriAddAnElementToAnArray(towns_details[:twyford],:important_people,"Lisa & Garry and Co")
towns_details[:twyford] = BasriAddANewRootKeyValuePair(towns_details[:twyford],:team_colours,[])
towns_details[:twyford] = BasriAddAnElementToAnArray(towns_details[:twyford],:team_colours,"red")
towns_details[:charvil] = BasriAddANewRootKeyValuePair(towns_details[:charvil],:team_colours,["purple","blue"])
#binding.pry
towns_details
end

#require 'pry'

p basri_function
#=======
p total

