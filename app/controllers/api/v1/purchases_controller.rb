class Api::V1::PurchasesController < ApplicationController
  def create
    Purchase.transaction do
      @purchase = Purchase.create!(purchase_params)
      json_response(@purchase)
    end
  rescue ActiveRecord::RecordInvalid => e
    json_response({ error: e.message }, :unprocessable_entity)
  end

  private
  
  def purchase_params
    params.require(:purchase).permit(
      :user_id,
      :video_content_purchase_option_id
    )
  end
end
