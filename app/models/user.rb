class User < ActiveRecord::Base
  has_secure_password
  belongs_to :person, polymorphic: true

  def name
    if self.person
      "#{self.person.first_name} #{self.person.last_name}"
    else
      self.email
    end
  end

  def global_owner
    self.person.to_global_id if self.person.present?
  end

  def global_owner=(person)
    self.person = GlobalID::Locator.locate person
  end
end
