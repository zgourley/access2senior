ActiveAdmin.register Property do

permit_params :name, :location, :description, :category, :image, :commit

index do
  column :name
  column :location
  column :description
  column :category
  column :image
  actions
end

end
