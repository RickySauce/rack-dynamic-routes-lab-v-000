class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    @@items = []

    if req.path.match(/items/)
      resp.write "nice"
    else
      resp.status = 404
    end
    resp.finish
  end

end
