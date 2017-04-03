class Contact
 # @@display_all = {}
 # @add = add
 # @modify = modify
 # @delete = delete
 # @search_by_attribute = search_by_attribute
 # @exit = exit

  attr_reader :id
  attr_accessor :add, :modify, :delete, :first_name, :display_all, :search_by_attribute, :first_name, :last_name, :email, :note

  @@contacts =[]
  @@id = 100

  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 10
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end


  # This method should return all of the existing contacts
  def self.all
    puts @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id_find)
    @@contacts.each do |person|
      if person.id == id_find
        return person
      end
    end
    return nil
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update

  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by (attribute_name, value)
    @@contacts.each do |person|
      if attribute_name == "first_name" && value == person.first_name
        return person
      end
    end
    return nil
  end

  # This method should delete all of the contacts
  def self.delete_all

  end

  def full_name

  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete

  end

  # Feel free to add other methods here, if you need them.

end











# puts "please choose from the following"
# puts " - add"
# puts " - modify"
# puts " - delete"
# puts " - display_all"
# puts " - search by attribute"
# puts " - exit"
# gets.chomp!
