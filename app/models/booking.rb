class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :townhouse_area

  validates :townhouse_area, uniqueness: { scope: [:townhouse_area, :reserved_to] }
end
