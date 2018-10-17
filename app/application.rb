require 'pry'
class Application

  def call(name)
    response = Rack::Response.new
    request = Rack::Request.new(env)

    if request.path.match(/items/)
      binding.pry
    else
      request.write @price
    end

  end

end
