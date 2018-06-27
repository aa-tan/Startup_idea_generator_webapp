require "kemal"
Kemal.config.port = 8090

get "/" do |env|
    render "src/views/main.ecr", "src/views/layouts/layout.ecr"
end

Kemal.run
