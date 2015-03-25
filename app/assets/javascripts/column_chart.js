$.ajax({
        type: "GET",
        url: "/results-by-versions",
        dataType: 'json',
        success: function (versions) {                        
            var data = [];  
            data[0] = ['Версия', 'Выполнено', 'Провалено', 'Не выполнялось'];                      
            versions.forEach(function (version) {
                data.push([version[0], version[1], version[2], version[3]]);
            });                                    
            google.load("visualization", "1", {packages:["corechart"]});
              google.setOnLoadCallback(drawChart);
              function drawChart() {                
                var g_data = google.visualization.arrayToDataTable(data, false);

                var options = {
                  //title: 'Company Performance',
                  hAxis: {title: 'Версия', titleTextStyle: {color: 'red'}}
                };

                var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
                chart.draw(g_data, options);
              }
        },
        error: function (e) {
            alert(e);
        }
    });