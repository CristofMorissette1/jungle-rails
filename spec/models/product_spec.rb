require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  validates :name, presence :true
  validates :price, presence :true
  validates :quantity, presence :true
  validates :category, presence :true
end
