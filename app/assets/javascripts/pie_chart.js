google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Не запускалось', 3],
          ['Провалено', 10],
          ['Пропущено', 5],
          ['Выполнено', 100]          
        ]);

        var options = {
          //title: 'My Daily Activities',
          pieHole: 0.2,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }