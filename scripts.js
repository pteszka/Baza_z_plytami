function sortLabelsAscending() {
    var rows, shouldSwitch;
    var switching = true;
    console.log("aaaa");
    while (switching) {
        switching = false;
        rows = document.getElementById("labels").rows;
        for (var i = 1; i < (rows.length - 1); i++) {
            shouldSwitch = false;
            var x = rows[i].getElementsByClassName("name")[0];
            var y = rows[i + 1].getElementsByClassName("name")[0];
            if (x.innerHTML > y.innerHTML) {
                shouldSwitch = true;
                break;
            }
        }
        if (shouldSwitch) {
            rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
            switching = true;
        }
    }
}

function sortLabelsDescending() {
    var rows, shouldSwitch;
    var switching = true;
    console.log("aaaa");
    while (switching) {
        switching = false;
        rows = document.getElementById("labels").rows;
        for (var i = 1; i < (rows.length - 1); i++) {
            shouldSwitch = false;
            var x = rows[i].getElementsByClassName("name")[0];
            var y = rows[i + 1].getElementsByClassName("name")[0];
            if (x.innerHTML < y.innerHTML) {
                shouldSwitch = true;
                break;
            }
        }
        if (shouldSwitch) {
            rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
            switching = true;
        }
    }
}

function showAlbums() {
    var i;
    var id = document.getElementById("formAnswer").value;
    var x = document.getElementById("albums").rows.length;
    var text="";
    for (i = 1; i < x; i++) {
        if (document.getElementById("albums").rows[i].cells.item(0).innerHTML === id) {
            console.log("git")
            text += document.getElementById("albums").rows[i].cells.item(1).innerHTML + "-" +
                document.getElementById("albums").rows[i].cells.item(3).innerHTML+"<br>";
        }
    }

    document.getElementById("albumsFromForm").innerHTML = text;
}

function Reset() {
    document.getElementById("albumsFromForm").innerHTML = "";
}

function AddLabel() {
    var table = document.getElementById("labels")
    var row = table.insertRow(-1);
    var Label_nr = row.insertCell(0);
    var Name = row.insertCell(1);
    var Formed = row.insertCell(2);
    var Website = row.insertCell(3);
    var Contact = row.insertCell(4);
    Label_nr.innerHTML = document.getElementById("AddId").value;

    Name.innerHTML = document.getElementById("AddName").value;

    Formed.innerHTML = document.getElementById("AddFormed").value;

    Website.innerHTML = document.getElementById("AddWebsite").value;

    Contact.innerHTML = document.getElementById("AddContact").value;

}