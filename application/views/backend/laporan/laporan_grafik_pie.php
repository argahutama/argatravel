<!DOCTYPE html>
<html>
<title>Grafik Tujuan</title>
<head><!-- panggil library -->
 <script type="text/javascript" src="<?php echo base_url();?>assets/Chart.js"></script>
</head>
<body>
 <h2>Grafik Jumlah Kota Tujuan</h2>
 <div style="width: 550px; height: 500px">
 <canvas id="myChart"></canvas>
 </div>
<script>
var dataCanvas = document.getElementById("myChart").getContext('2d');
var Isidata = {
 label: 'jk',
 data: [<?php foreach ($data_tujuan as $data) { echo $data->jumlah . ", "; } ?> ],
 backgroundColor: ['#4D8066', '#809980', '#E6FF80', '#1AFF33', '#999933',
          '#FF3380', '#CCCC00', '#66E64D', '#4D80CC', '#9900B3', 
          '#FF99E6', '#CCFF1A', '#FF1A66', '#E6331A', '#33FFCC',
		  '#66664D', '#991AFF', '#E666FF', '#4DB3FF', '#1AB399',
		  '#E666B3', '#33991A', '#CC9999', '#B3B31A', '#00E680',
          '#FF6633', '#FFB399', '#FF33FF', '#FFFF99', '#00B3E6', 
		  '#E6B333', '#3366E6', '#999966', '#99FF99', '#B34D4D',
		  '#80B300', '#809900', '#E6B3B3', '#6680B3', '#66991A', 
		  '#66994D', '#B366CC', '#4D8000', '#B33300', '#CC80CC',  
		  '#E64D66', '#4DB380', '#FF4D4D', '#99E6E6', '#6666FF'], //Tidak tau cara otomatisnya, saya banyakin aja isi array hexacolornya hehe
 yAxisID: "y-axis-data1"
};

var datatujuan = {
labels: [ <?php foreach ($data_tujuan as $data) { echo "'" .$data->tujuan
."',"; } ?> ],
datasets: [Isidata]
};
var chartOptions = {
 scales: {
//  xAxes: [{ categoryPercentage: 0.5 }],
//  yAxes: [ { id: "y-axis-data1" , ticks: { beginAtZero:true } } ]
 }
};
var barChart = new Chart(dataCanvas, {
 type: 'pie',
 data: datatujuan,
 options: chartOptions
 });
</script>
</body>
</html>