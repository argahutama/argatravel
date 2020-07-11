<html>
<head>
    <title>Grafik Tujuan</title>
    <script type="text/javascript" src="<?php echo base_url();?>assets/Chart.js" ></script>
    <?php $this->load->view('backend/include/base_css'); ?>
</head>
<body>
    <h2>Grafik Jumlah Kota Tujuan</h2>
    <!-- canvas untuk menampilkan grafik -->
    <div style="width: 550px; height: 500px">
    <canvas id="myChart"></canvas>
    </div>
    <!-- membuat grafik -->
    <script>
    // memanggil object canvas
    var dataCanvas = document.getElementById("myChart").getContext('2d');
    // inisiasi data
    var isiData = {
    label: 'Jumlah Order', // nama label dari data
    data: [ <?php foreach ($data_tujuan as $data) { echo $data->jumlah . ", "; } ?> ], // isi angka datanya
    backgroundColor: '#4D8066', // warna grafik data
    borderColor: '##93C3D2',
    yAxisID: "y-axis-data1" // menampilkan rentang angka datanya
    };

    var dataTampil = {
    // label data
    labels: [ <?php foreach ($data_tujuan as $data) { echo "'" .$data->tujuan ."',"; } ?> ],
    // isi data
    datasets: [isiData]
    };

    var chartOptions = {
    scales: {
    xAxes: [ { categoryPercentage: 0.5 }],
    yAxes: [ { id: "y-axis-data1" , ticks: {beginAtZero:true, stepSize:1} } ] // tampilkan axis rentang data, skala 1
    }
    };
    // menampilkan grafik
    var barChart = new Chart(dataCanvas, {
    type: 'bar', // tipe grafik
    data: dataTampil,
    options: chartOptions
    });
    
    </script>   
</body>
</html>