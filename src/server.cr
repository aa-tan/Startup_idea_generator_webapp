require "kemal"
Kemal.config.port = 8090

get "/" do |env|
    render "views/main.ecr", "views/layouts/layout.ecr"
end

Kemal.run
