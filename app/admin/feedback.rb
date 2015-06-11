ActiveAdmin.register Feedback do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
  permit_params :email_address

  index do
    column :email_address
    actions
  end

  form :html => { :multipart=>true } do |f|
    f.inputs "Feedback" do
      f.input  :email_address
    end
    f.actions
  end

  show do
    attributes_table do

      row(:email_address)

    end
  end

end
