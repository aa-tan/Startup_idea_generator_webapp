
var tech = [
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

var response = [
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

var languages = [
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

var clients = [
    "dog-lovers",
    "cat-lovers",
    "students",
    "working moms",
    "single dads",
    "furries",
    "redditors",
    "star wars fans",
    "weeaboos",
    "prisoners"
]

function generate() {
    var first = get_random(tech)
    var second = get_random(response)
    if(second == " coded using "){
        second += get_random(languages)
    }
    else if(second == " for "){
        second += get_random(clients)
    }
    document.getElementById("first").innerHTML = first
    document.getElementById("second").innerHTML = second
    // document.getElementById("text").style.display = "block"
}

function get_random(arr){
    return arr[Math.floor(Math.random() * arr.length)]
}

window.onload(generate())