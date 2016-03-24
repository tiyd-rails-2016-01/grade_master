class User < ActiveRecord::Base
  belongs_to :person, polymorphic: true

  def global_owner
    self.person.to_global_id if self.person.present?
  end

  def global_owner=(person)
    self.person = GlobalID::Locator.locate person
  end
end
