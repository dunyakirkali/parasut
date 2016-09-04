# lib/parasut/contact.rb
module Parasut
  # Contact
  class Contact
    ATTRIBUTES = [
      :id, :name, :contact_type, :email, :balance, :tax_office,
      :tax_number, :archived, :category, :address, :contact_people
    ]

    # Attributes
    attr_accessor *ATTRIBUTES

    # Initializer
    def initialize(options)
      @id = options[:id]
      @name = options[:name]
      @contact_type = options[:contact_type]
      @email = options[:email]
      @balance = options[:balance]
      @tax_office = options[:tax_office]
      @tax_number = options[:tax_number]
      @archived = options[:archived]
      @category = options[:category]
      @address = options[:address]
      @contact_people = options[:contact_people]
    end
  end
end