class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.limit(10).all 
    @jaartal = 2010 
    @active_client_invoices_year =[]
    @active_year_hash = {}
    
    
    while @jaartal <= 2018 do  
      @active_client_invoices = Invoice.where(date:/#{@jaartal.to_s}/).distinct(:client_id)
      @active_client_invoices_year = @active_client_invoices.count
      @active_year_hash[@jaartal] = @active_client_invoices_year
      @jaartal = @jaartal + 1
    end
  end
  
  def active
    @active_year_hash = {}
   params[:chosen_jaartallen].each do |jaartal|
     @active_client_invoices = Invoice.where(date:/#{jaartal.to_s}/).distinct(:client_id) 
     @amount_of_active_clients = @active_client_invoices.count
     @active_year_hash[jaartal] = @amount_of_active_clients
   end     
  end
  
  def change
    @jaartallen = [2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018]
  end
  
    # GET /clients/1
  # GET /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
    # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Client was successfully updated.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    #def client_params
     # params.require(:client).permit(:date, :birthdate, :isclientof, :active, :lastname, :firstname, :title, :callname, :email, :warning)
    #end
end
