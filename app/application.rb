require 'pry'
class Application

  def call(name)
    response = Rack::Response.new
    request = Rack::Request.new(env)

    if request.path.match(/items/)
      [404]
    else
      request.write @price
    end

  end

end
