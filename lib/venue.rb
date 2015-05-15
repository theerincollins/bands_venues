class Venue < ActiveRecord::Base
  has_and_belongs_to_many(:bands)

  validates(:description, :presence => true)
  validates(:address, :presence => true)

  before_save(:capitalize_description)

  private

  def capitalize_description
    self.description = (description().capitalize())
  end
end
