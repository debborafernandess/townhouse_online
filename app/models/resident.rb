class Resident < ApplicationRecord
  belongs_to :townhouse_area, -> { where('area_type = ?', 'tower') }

  validates :name, :email, presence: true
end
