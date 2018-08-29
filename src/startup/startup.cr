module Startup
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

  TECH = [
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
    "A Travel agency ",
    "Capitalism ",
    "Communism ",
    "Underwear ",
    "A coffee machine ",
  ]

  RESPONSE = [
    " using Artificial Intelligence",
    " using Internet of Things",
    " using Blockchain",
    " using Big Data",
    " Open-source",
    " as a Service",
    " with an API",
    " coded using ",
    " for ",
  ]

  LANGUAGES = [
    "brainfuck",
    "C",
    "NodeJS",
    "PHP",
    "Python",
    "Swift",
    "Lisp",
    "Haskell",
    "Assembly",
    "Machine Code",
  ]

  CLIENTS = [
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
    "taxidermists",
  ]
end
