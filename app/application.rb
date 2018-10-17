class Application

  def call(env)
    response = Rack::Response.new
    request = Rack::Request.new(env)

    if request.path.match(/items/)

    else
      request.write @price
    end

  end

end
