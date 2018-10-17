class Application

  def call(env)
    response = Rack::Response.new
    request = Rack::Request.new(env)

    if request.path.match(/items/)
      [404]
    else
      response.write @price
    end

  end

end
