defmodule App.Weather do
  def get_appid() do
      Application.get_env(:app, :token)
  end

  def get_endpoint(location) do
    location = URI.encode(location)
    "http://api.openweathermap.org/data/2.5/weather?q=#{location}&appid=#{get_appid()}"
  end

end
