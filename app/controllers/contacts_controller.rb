class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = "Your contact was created"
      respond_to do |format|
        format.html { redirect_to contacts_path }
        format.json
      end
    else
      render :new
    end
  end

  def update

  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_path
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :phone)
    end
end
