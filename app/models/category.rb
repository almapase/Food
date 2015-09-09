class Category < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  def hello
    "Hola"
  end
end
