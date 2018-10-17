class Application

  def call
    response = Rack::Response.new
    request = Rack::Request.new(env)

    if request.path.match(/items/"#{name}")

  end

end
