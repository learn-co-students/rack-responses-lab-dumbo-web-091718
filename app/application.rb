class Application

def call(env)
  resp = Rack::Response.new
  time = Time.now
  time = time.to_s.split(" ")[1].split(":")[0]

  if time.to_i >= 12
    resp.write "Good Afternoon"
  else
   resp.write "Good Morning"
  end
  resp.finish

end



end
