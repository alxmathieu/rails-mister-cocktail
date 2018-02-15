class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, uniqueness: true, presence: true

  # before_destroy :check_for_doses

  # private

  # def check_for_doses
  #   if self.doses.exists?
  #     # errors.add_to_base("cannot delete ingredients if they are used by a cocktail")
  #     return false
  #   end
  # end

end


