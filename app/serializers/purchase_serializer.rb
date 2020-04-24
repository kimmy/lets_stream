class PurchaseSerializer < ApplicationSerializer
  attributes :id, :video_content, :expires_at

  def video_content
    content = object.video_content
    serializer = ActiveModel::Serializer.serializer_for(content)
    serializer.new(content)
  end

  def expires_at
    object.expires_at.strftime("%Y/%m/%d")
  end
end
