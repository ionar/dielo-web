class ContactsController < ApplicationController
  def index
    # Formulario de contato  
    @contact = Contact.new(params[:welcome])
  end
  
  def create
    @contact = Contact.new(params[:welcome])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        # re-initialize Home object for cleared form
        @contact = Contact.new
        format.html { render 'index'}
        format.js   { flash.now[:success] = @message = "Obrigado por sua mensagem. Responderemos em breve!" }
      else
        format.html { render 'index' }
        format.js   { flash.now[:error] = @message = "Mensagem não foi enviada" }
      end
    end
  end

end
