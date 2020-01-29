class Sucursal < ApplicationRecord
  belongs_to :user

  has_many :empleados, dependent: :destroy
end
