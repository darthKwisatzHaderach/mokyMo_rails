$(document).on("mouseover", "#components", function () {    
    var projects_select = document.getElementById("projects");
    id = projects_select.options[projects_select.selectedIndex ].value
    $.ajax({
        type: "GET",
        url: "/project/" + id + "/components",
        dataType: 'json',
        success: function (components) {
            var Dropdown="";
            var data = [];
            components.forEach(function (component) {
                data.push({
                    id: component.id,
                    title: component.title,
                });
            });            
            for(i=0;i<components.length;i++){
                Dropdown+="<option value='" + data[i].id + "'>" + data[i].title + "</option>";
            }
            document.getElementById('components').innerHTML = Dropdown;
        },
        error: function (e) {
            alert(e);
        }
    });
});