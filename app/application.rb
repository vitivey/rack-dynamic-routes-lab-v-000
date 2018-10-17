class Application

  def call(env)
    response = Rack::Response.new
    request = Rack::Request.new(env)

    if request.path.match(/items/)
      [404, {"Content-Type" => "text/html"}, ["Route not found"]]
    else
      response.write @price
    end

    response.finish

  end

end
