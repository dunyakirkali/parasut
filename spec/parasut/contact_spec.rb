require 'spec_helper'

describe Parasut::Contact do
  # Attributes
  Parasut::Contact::ATTRIBUTES.each do |attribute|
    xit "should have attribute attr_accessor #{attribute}" do
      contact = Parasut::Contact.new(attribute => 'Some string')
      expect(contact.send(attribute.to_s)).to eq('Some string')
    end
  end

  # Class methods
  describe '.' do
    describe 'all' do
      it 'returns all contacts' do
        expect(Parasut::Contact.all.length).not_to eq(0)
      end
    end
  end
end
