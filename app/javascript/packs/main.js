
document.addEventListener("DOMContentLoaded", function(event) {
    // Your code to run since DOM is loaded and ready

    var elements = document.getElementsByClassName("fa-angle-down");
    var elements2 = document.getElementsByClassName("fa-angle-up");

    var level = function() {
        // var attribute = this.getAttribute("data-myattribute");
        let level = '';
        let updatePack = this.id.split('-');
        if ((updatePack[1]).includes('up')){
            level = this.parentElement.parentElement;
            level = parseInt(level.textContent) +1;
        }
        else{
            level = this.parentElement;
            level = parseInt(level.textContent) -1;
        }
        ability_name = ''
        switch(updatePack[2]) {
            case 'str':
                ability_name = 'Strength'
            break;
            case 'dex':
                ability_name = 'Dexterity'
            break;
            case 'con':
                ability_name = 'Constitution'
            break;
            case 'int':
                ability_name = 'Intelligence'
            break;
            case 'wis':
                ability_name = 'Wisdom'
            break;
            case 'cha':
                ability_name = 'Charisma'
            break;
            default:
                break;
        }
        let ability = {
            name: ability_name,
            level: level,
            experience: 1,
            player_id: updatePack[0],
            id: updatePack[3]
        }

        fetch(`/abilities/${ability.id}`)
            .then((data) => data.text())
            .then((html) => {
                const results = document.querySelector("#results");
                results.insertAdjacentHTML("beforeend", data);
            });
    };

    for (var i = 0; i < elements.length; i++) {
        elements[i].addEventListener('click', level, false);
    }
    for (var i = 0; i < elements2.length; i++) {
        elements2[i].addEventListener('click', level, false);
    }
});

