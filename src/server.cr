require "kemal"
require "./startup/*"
include Startup

Kemal.config.port = 8090
error 404 do
  "404 Error"
end

error 403 do
  "Access Forbidden!"
end


get "/" do |env|
    render "src/views/main.ecr", "src/views/layouts/layout.ecr"
end

get "/new" do |env|
    env.response.content_type = "application/json"
    get_response(Startup::TECH, Startup::RESPONSE, Startup::LANGUAGES, Startup::CLIENTS).to_json
end

Kemal.run