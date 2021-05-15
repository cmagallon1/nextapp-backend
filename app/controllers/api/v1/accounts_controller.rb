class Api::V1::AccountsController < ApplicationController
  def create
    Account.transaction do
      personal_information = PersonalInformation.create!(personal_information_params)
      company = Company.create!(company_params)
      address = Address.create!(address_params)
      billing = Billing.create!(billing_params.merge({ address_id: address.id }))
      @account = Account.create!(account_params.merge({
        personal_information_id: personal_information.id,
        company_id: company.id,
        billing_id: billing.id
      }))
    end

    render json: @account
  end

  private

  def account_params
    params.require(:account).permit(:title_id, :nmls, :referrer_code_id)
  end

  def personal_information_params
    params.require(:personal_information).permit(
      :email,
      :first_name,
      :middle_name,
      :last_name,
      :mobile_phone,
      :direct_phone
    )
  end

  def company_params
    params.require(:company).permit(:name, :phone, :nmls)
  end

  def billing_params
    params.require(:billing).permit(:name, :company)
  end

  def paying_manager_params
    params.require(:personal_information).permit(:email, :first_name, :last_name)
  end

  def address_params
    params.require(:address).permit(:zip, :city, :street, :state_id)
  end
end
