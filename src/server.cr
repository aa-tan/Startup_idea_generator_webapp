require "kemal"
Kemal.config.port = 8090

get "/" do |env|
    render "views/home.ecr", "views/layouts/layout.ecr"
end

get "/name/:name" do |env|
    name = env.params.url["name"]
    render "views/hello.ecr"
end

Kemal.run
