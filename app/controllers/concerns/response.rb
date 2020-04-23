module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def json_response_with_includes(object, includes, status = :ok)
    render json: object, include: includes, status: status
  end
end
