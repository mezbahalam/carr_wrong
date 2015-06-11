ActiveAdmin.register ContactDetail do


  permit_params :full_name, :email, :phone_number, :attachment

  index do
    column :attachment do |contact_detail|
      link_to "show CVs", contact_details_path if contact_detail.attachment?
    end

    column :full_name
    column :email
    column :phone_number
    actions
  end





  form :html => { :multipart=>true } do |f|
    f.inputs "ContactDetail" do
      f.input :attachment
      f.input  :full_name
      f.input  :email
      f.input  :phone_number
    end
    f.actions
  end

  show do
    attributes_table do

      row :attachment if contact_detail.attachment? do
        link_to(contact_detail.attachment_url)
      end
      row(:full_name)
      row(:email)
      row(:phone_number)
    end
  end

end
