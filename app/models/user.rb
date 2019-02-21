# xsxx
class User < ApplicationRecord
  def self.insert(hash = {})
  	name = hash[:tname]
    age = hash[:age]
    state = hash[:state]
    pincode = hash[:pincode]
    states = { 'kerala'=>['67','68','69'], 'Tamil_Nadu'=>['60','61','62','63','64']}
    states.each do |key, values|
    	if key == state && values.include?(pincode)
        User.create(tname: name, age: age, state: key, pincode: pincode )
        puts 'inserted'
     end
    end
  end
end
