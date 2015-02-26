$(document).on("click", "#select-project", function () {
	var projects_select = document.getElementById("projects");
	var id = projects_select.options[projects_select.selectedIndex].value;
	if (id == "none") {
    	document.getElementById("select-project").disabled = true;
    	document.getElementById("projects").style.border = "1px solid red";
	} else { 
    	document.getElementById("select-project").disabled = false;
    	document.getElementById("projects").style.border = "1px solid #ccc";
	}
	
});

$(document).on("click", "#projects", function () {
	var projects_select = document.getElementById("projects");
	var id = projects_select.options[projects_select.selectedIndex].value;
	if (id == "none") {
    	document.getElementById("select-project").disabled = true;
    	document.getElementById("projects").style.border = "1px solid red";
	} else { 
    	document.getElementById("select-project").disabled = false;
    	document.getElementById("projects").style.border = "1px solid #ccc";
	}
	
});
