class Application

  def call(env)
    response = Rack::Response.new
    request = Rack::Request.new(env)

    item_name = request.path.split("/items/").last
    if request.path.match("/items/#{item_name}")
      response.write Item.items
    else
      response.write [404, {"Content-Type" => "text/html"}, ["Route not found"]]
    end

    response.finish

  end

end
