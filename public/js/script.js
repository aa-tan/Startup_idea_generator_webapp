
function generate(){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            res = JSON.parse(this.responseText)
            document.getElementById("first").innerHTML = res["first"]
            document.getElementById("second").innerHTML = res["second"]
        }
    };
    xhttp.open("GET", "/new", true);
    xhttp.send();
}

function get_random(arr){
    return arr[Math.floor(Math.random() * arr.length)]
}

window.onload(generate())