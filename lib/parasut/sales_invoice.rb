# lib/parasut/sales_invoice.rb
module Parasut
  # SalesInvoice
  class SalesInvoice
    include Her::Model
    extend Parasut::Paginated
    include_root_in_json true
    parse_root_in_json true

    has_many :payments
    has_one :e_document_status, class_name: 'DocumentStatus'

    def e_document_type
      self.class.get_raw("sales_invoices/#{id}/e_document_type") do |parsed_data, response|
        parsed_data[:data][:e_document_type]
      end
    end
  end
end
