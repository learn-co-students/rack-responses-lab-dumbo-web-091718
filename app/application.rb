class Application

  def call(env)

  res = Rack::Response.new
  # # 1. If it's before noon, greet the user with "Good Morning!"
  # # 2. If it's after noon, greet the user with "Good Afternoon!".
  # #Remember that getting the time may return results in 24 hour time! Anytime after 12 is the afternoon.
    day_hours = Time.now.utc.to_s.split(" ")[1].split(":")[0].to_i
    #day_times.inspect

       if day_hours.to_i <= 12
          res.write "Good Morning!"
        else
         res.write "Good Afternoon!"
        end

       res.finish
      end
end
