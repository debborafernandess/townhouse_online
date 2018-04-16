class TownhouseArea < ApplicationRecord
  enum area_types: { barbecue_grill: 1, party_room: 2, tower: 0 }
end
