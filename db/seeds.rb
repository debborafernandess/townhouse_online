# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
[
  { name: 'Churrasqueira', area_type: :barbecue_grill },
  { name: 'Salão de Festa', area_type: :party_room },
].each { |area_attrs| TownhouseArea.find_or_create_by(area_attrs) }

