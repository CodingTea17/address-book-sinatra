class Contact
  @@contacts = []

  attr_reader(:first_name, :last_name, :company, :job_title, :contact_type, :addresses)

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @company = attributes.fetch(:company)
    @job_title = attributes.fetch(:job_title)
    @contact_type = attributes.fetch(:contact_type)
    @addresses = []
  end

  def add_address(address)
    @addresses.push(address)
  end

  def save()
    @@contacts.push(self)
  end

  def self.find(ln)
    @@contacts.each do |contact|
      if contact.last_name == ln
        return contact
      end
    end
  end

  def self.all()
    @@contacts
  end

  def self.sort()
    @@contacts.sort_by {|x| x.first_name.downcase}
  end
end
