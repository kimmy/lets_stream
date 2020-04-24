class ApplicationSerializer < ActiveModel::Serializer
  def created_at
    object.created_at.strftime("%Y/%m/%d")
  end
end
