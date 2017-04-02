class CRM
  attr_reader :exit
  attr_accessor :add, :modify, :delete, :display_all, :search_by_attribute

  def initialize
    @add = add
    @modify = modify
    @delete = delete
    @display_all = display_all
    @search_by_attribute = search_by_attribute
    @exit = exit
  end

  def main_menu
  end

  def print_main_menu
  end

  def call_option
  end

  def add_new_contact
  end

  def modify_existing_contact
  end

  def delete_contact
  end

  def display_all_contacts

  end

  def search_by_attribute

  end


end
