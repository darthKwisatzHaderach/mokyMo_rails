$(document).on("click", "#projects-button", function () {
    $.ajax({
        type: "GET",
        url: "/projects/list",
        dataType: 'json',
        success: function (projects) {
            var Dropdown="";
            var data = [];
            projects.forEach(function (project) {
                data.push({
                    id: project.id,
                    title: project.title,
                });
            });            
            for(i=0;i<projects.length;i++){
                Dropdown+="<option class='option' value='" + data[i].id + "'>" + data[i].title + "</option>";
            }
            document.getElementById('projects').innerHTML = Dropdown;
        },
        error: function (e) {
            alert(e);
        }
    });
});