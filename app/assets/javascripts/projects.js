$(document).on("click", ".projects", function () {
    $.ajax({
        type: "GET",
        url: "/projects/list",
        dataType: 'json',
        success: function (projects) {
            var Dropdown="";
            var data = [];
            projects.forEach(function (project) {
                data.push({
                    title: project.title,
                });
            });            
            for(i=0;i<projects.length;i++){
                Dropdown+="<li><a name='" + data[i].title + "' href='#' class='deplink'>" + data[i].title + "</a></li>";
            }
            document.getElementById('drop').innerHTML = Dropdown;
        },
        error: function (e) {
            alert(e);
        }
    });
});