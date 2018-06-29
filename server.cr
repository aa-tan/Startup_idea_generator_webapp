require "kemal"
Kemal.config.port = 8090

tech = [
    "A flower company ",
    "Cryptocurrency ",
    "Gym clothes ",
    "Shoes ",
    "Selling customer data ",
    "A grocery store ",
    "A social network ",
    "The next big video game ",
    "The internet ",
    "Interior design ",
    "Baking ",
    "Movies ",
    "Watches ",
    "Cruise ships ",
    "A Travel agency "
]

response = [
    " using Artificial Intelligence",
    " using Internet of Things",
    " using Blockchain",
    " using Big Data",
    " Open-source",
    " as a Service",
    " with an API",
    " coded using ",
    " for "
]

languages = [
    "brainfuck",
    "C",
    "NodeJS",
    "PHP",
    "Python",
    "Swift",
    "Lisp",
    "Haskell",
    "Assembly",
    "Machine Code"
]

clients = [
    "dog-lovers",
    "cat-lovers",
    "students",
    "working moms",
    "single dads",
    "furries",
    "redditors",
    "star wars fans",
    "weeaboos",
    "prisoners",
    "taxidermists"
]

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
    get_response(tech, response, languages, clients).to_json
end

def get_response(tech, response, languages, clients)
    first = get_random(tech)
    second = get_random(response)
    if second == " coded using "
        second += get_random(languages)
    elsif second == " for "
        second += get_random(clients)
    end
    {"first" => first, "second" => second}
end

def get_random(arr)
    arr[Random.rand(arr.size)]
end


Kemal.run
