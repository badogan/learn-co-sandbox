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
def basri_function
towns_details = {}
towns_details = {:twyford=>{},
  :sonning=>{},
  :charvil=>{}
}
towns_details[:twyford] = {:population=>nil,:important_people=>nil}
towns_details[:charvil] = {:population=>nil,:important_people=>nil}
towns_details[:sonning] = {:population=>nil,:important_people=>nil}
towns_details[:twyford][:population] = 5000
towns_details
end

p basri_function