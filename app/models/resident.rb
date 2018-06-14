class Resident < ApplicationRecord
  # belongs_to :townhouse_area, -> { where('area_type = ?', 'tower') }

  validates :name, :email, :document, presence: true
end
