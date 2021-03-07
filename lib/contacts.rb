require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
  
  # Iterate over contacts hash
  # At :favorite_ice_cream_flavors
  # remove "strawberry" from Freddy's favorite ice cream flavors array
  # Set a conditional to iterate through the hash for Freddy Mercury only
  # Check to see if the key is == to favorite_ice_cream_flavors
  # If it is, check to see if the array of flavors contains "strawberry"
  # If it does, then delete it from the array  

def remove_strawberry(contacts)
  contacts.each do |person, contact_details_hash|
    if person == "Freddy Mercury"
      contact_details_hash.each do |attribute, data|
        if attribute == :favorite_ice_cream_flavors
          data.delete_if {|ice_cream| ice_cream == "strawberry"}
        end
      end
    end
  end
end
