class UsersController < ApplicationController
 before_action :set_user, only: [:show, :edit, :update, :destroy] 
  def index
    @users = User.where(active: true)
  end

  def show
    user = params[:id]
    @total_invoicedetails_user = Invoicedetail.where(regminequser: user).count
    @total_revenue_user = Invoicedetail.where(regminequser: user).sum(:price)
    @invoices_ids = Invoicedetail.where(regminequser: user).distinct(:invoice_id)
    @invoices_user = Invoice.where(id:{'$in': @invoices_ids}).count
    @atf_user = @total_revenue_user / (@invoices_user + 0.01)
      
    
  end
  
  def overview
    
    @user_atf_hash = {}
    @users = User.where(active: true)
    @users.each do |user|
      total_invoicedetails = Invoicedetail.where(regminequser: user).count
      total_revenue = Invoicedetail.where(regminequser: user).sum(:price)
      invoices_ids = Invoicedetail.where(regminequser: user).distinct(:invoice_id)
      invoices = Invoice.where(id:{'$in': invoices_ids}).count
      atf = total_revenue / (invoices + 0.01) 
      @user_atf_hash[user] = atf.round(2)
       
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invoice_params
      params.require(:user).permit(:firstname, :lastname, :location, :username, :active)
    end

end  

