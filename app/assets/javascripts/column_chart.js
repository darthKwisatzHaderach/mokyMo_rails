google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Версия', 'Выполнено', 'Провалено'],
          ['1.0.0',  100, 10],
          ['1.1.0',  117, 20],
          ['1.2.0',  160, 5],
          ['1.3.0',  180, 4]
        ]);

        var options = {
          //title: 'Company Performance',
          hAxis: {title: 'Версия', titleTextStyle: {color: 'red'}}
        };

        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }