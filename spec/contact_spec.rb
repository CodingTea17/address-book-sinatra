require('rspec')
require('contact')

describe(Contact)
  describe("#first_name") do
    it("take user input of first name") do
      test_contact = Contact.new({:first_name=>"Karla",:last_name=>"Buckner",:company=>"Epicodus",:job_title=>"Student",:contact_type=>"Professional"})
      expect(test_contact.first_name).to(eq("Karla"))
    end
  end
    # it("returns true if it is a square") do
    #   test_rectangle = Rectangle.new(15, 15)
    #   expect(test_rectangle.square?()).to(eq(true))
    # end
  # end
