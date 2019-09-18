class UserAccountsController < ApplicationController
  # before_action :insure_admin, only: [:update], if: -> { :role == :admin && role_changed? }
  def index
    console
    @accounts = UserAccount.all.order(:id)
  end

  def update
    @account = UserAccount.find(params[:id])
    # if @account.update(role: params[:role])
    #   redirect_to user_accounts_path
    # else
    #   redirect_to :back, flash: account.errors.full_messages
    # end
    redirect_to user_accounts_path if @account.update(role: params[:role])
    @admin_account = UserAccount.where(role: :admin)
    flash[:danger] = 'Админов не может быть меньше одного' if @admin_account.length < 2
    # redirect_to admin_accounts_path
    # if @account.update(role: params[:role])
    #   redirect_to user_accounts_path
    # else
    #   redirect_to :back, flash: @account.errors.full_messages
    # end
  end

  # private

  # def insure_admin
  #   errors.add(:role, "admin cannot switch to user")
  # end
end