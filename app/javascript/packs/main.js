
document.addEventListener("DOMContentLoaded", function(event) {
    // Your code to run since DOM is loaded and ready

    var elements = document.getElementsByClassName("fa-angle-down");
    var elements2 = document.getElementsByClassName("fa-angle-up");

    var level = function() {
        // var attribute = this.getAttribute("data-myattribute");
        let level = '';
        let update = this.className;
        if ((this.className).includes('up')){
            level = this.parentElement.parentElement;
        }
        else{
            level = this.parentElement;
        }
        
        alert(parent.textContent);
    };

    for (var i = 0; i < elements.length; i++) {
        elements[i].addEventListener('click', level, false);
    }
    for (var i = 0; i < elements2.length; i++) {
        elements2[i].addEventListener('click', level, false);
    }

    // document.getElementsByClassName("down-str").addEventListener ("click", level, false);
    // document.getElementById ("up-str").addEventListener ("click", level, false);
    // function level(elem) {
    //     console.log(this.id)
    //     // $.ajax({
    //     //     type: "PUT",
    //     //     url: "/sections/<%= section.id %>"
    //     // });
    // }

    // alert("OHAPOL")
});

