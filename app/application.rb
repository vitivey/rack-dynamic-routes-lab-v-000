class Application

  def call(env)
    response = Rack::Response.new
    request = Rack::Request.new(env)

    if request.path.match(/items/)
      response.write @price
    else
      [404, {"Content-Type" => "text/html"}, ["Route not found"]]
      response.write "Route not found"
    end

    response.finish

  end

end
