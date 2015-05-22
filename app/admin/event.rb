ActiveAdmin.register Event do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params do
    permitted = [:name, :title, :description, :from_date, :to_date,
             :status_id]
    permitted
  end

  index do
    column :name
    column :title
    column :description
    column :status
    column :from_date
    column :to_date
    actions
  end

end
