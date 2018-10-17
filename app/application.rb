class Application

  def call(env)
    response = Rack::Response.new
    request = Rack::Request.new(env)

    item_name = request.path.split("/items/").last
    item = Items.item.find {|item| item.name == item_name}

    if request.path.match("/items/#{item_name}")
      response.write item.price
    else
      response.write [404, {"Content-Type" => "text/html"}, ["Route not found"]]
    end

    response.finish

  end

end
