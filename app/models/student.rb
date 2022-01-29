class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def to_lower_name
    self.last_name.toLowerCase()
  end
end
