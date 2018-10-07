class Application

  def call(env)

  res = Rack::Response.new()
  # 1. If it's before noon, greet the user with "Good Morning!"
  # 2. If it's after noon, greet the user with "Good Afternoon!".
  #Remember that getting the time may return results in 24 hour time! Anytime after 12 is the afternoon.
    day_times = Time.now
    day_times.inspect

    morning = Kernel.rand(0..12)
    afternoon = Kernel.rand(12..24)

    if day_time <= 12
      res.write "Good Morning!"
     #res.write "Good Morning! It is #{morning} am "
  else
      res.write "Good Afternoon!"
     #res.write "Good Afternoon! It is #{afternoon} pm"
    end

   res.finish
  end

end
