require_relative 'contact'

class CRM

  # def initialize
  #
  # end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
  end

  def call_option(user_selected)
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then exit
    end
  end

  def add_new_contact
  print 'Enter First Name: '
  first_name = gets.chomp

  print 'Enter Last Name: '
  last_name = gets.chomp

  print 'Enter Email Address: '
  email = gets.chomp

  print 'Enter a Note: '
  note = gets.chomp

  contact = Contact.create(
  first_name: first_name,
  last_name:  last_name,
  email:      email,
  note:       note
)
end

  def modify_existing_contact

  end

  def delete_contact
    Contact.delete
  end

  def display_all_contacts
    print Contact.all.inspect
  end

  def search_by_attribute

  end

end


crm = CRM.new
crm.main_menu
