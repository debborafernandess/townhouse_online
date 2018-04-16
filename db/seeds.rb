# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
[
  { name: 'Boa Vista', area_type: 0 },
  { name: 'Quiosque 1', area_type: 1 },
  { name: 'Salão de Festa - Boa Vista', area_type: 2 },
].each { |area_attrs| TownhouseArea.find_or_create_by(area_attrs) }

