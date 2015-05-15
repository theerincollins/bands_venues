class Band < ActiveRecord::Base
  has_and_belongs_to_many(:venues)

  validates(:name, :presence => true)
  validates(:genre, :presence => true)

  before_save(:capitalize_name)

  private

  def capitalize_name
    self.name = (name().capitalize())
  end
end
