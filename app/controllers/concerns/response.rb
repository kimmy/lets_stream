module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def json_response_with_each_serializer(object, serializer, status = :ok, **options)
    render json: object, each_serializer: serializer, status: status, options: options
  end
end
