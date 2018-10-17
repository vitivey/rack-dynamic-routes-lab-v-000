class Application

  def call(env)
    response = Rack::Response.new
    request = Rack::Request.new(env)

    if request.path.match(/items/)
      item_name = request.path.split("/items/").last
      response.write Item::item.price
    else
      response.write [404, {"Content-Type" => "text/html"}, ["Route not found"]]
    end

    response.finish

  end

end
