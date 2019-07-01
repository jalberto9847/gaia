class Category < ApplicationRecord
  has_many :movements

  INCOME = 'ingreso'
  EXPENSE = 'gasto'

  def self.types
    [INCOME, EXPENSE]
  end
end
