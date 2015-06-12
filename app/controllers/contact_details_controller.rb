class ContactDetailsController < ApplicationController

  before_filter :authenticate_admin_user! , except: :new

  def index
    @contact_details = ContactDetail.all
  end


  def new
    @contact_detail = ContactDetail.new
  end


  def create
    @contact_detail = ContactDetail.new(contact_detail_params)

    respond_to do |format|
      if @contact_detail.save
        format.html { redirect_to careers_index_path, notice: 'Contact detail was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end



  private
  def contact_detail_params
    params.require(:contact_detail).permit(:full_name, :email, :phone_number, :attachment)
  end
end
