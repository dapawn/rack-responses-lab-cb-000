class Application

  def call(env)

    resp = Rack::Response.new

    hr = Time.now
    if hr.hour >= 12
      resp.write "#{hr} Good Afternoon!"
    else
      resp.writing "Good Morning!"
    end
    resp.finish
  end

end
