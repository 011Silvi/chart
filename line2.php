<!DOCTYPE html>
<html>
<head>
    <title>Line Chart</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <canvas id="lineChart" width="800" height="400"></canvas>

    <?php
    // Menghubungkan dengan database
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "chart";

    // Membuat koneksi
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Memeriksa koneksi
    if ($conn->connect_error) {
        die("Koneksi gagal: " . $conn->connect_error);
    }

    // Mendapatkan data dari tabel
    $sql = "SELECT * FROM data_negara";
    $result = $conn->query($sql);

    // Menginisialisasi array untuk data
    $negara = array();
    $total_cases = array();
    $total_death = array();
    $total_recovered = array();
    $active_cases = array();
    $total_tests = array();

    // Memasukkan data ke dalam array
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            array_push($negara, $row['country']);
            array_push($total_cases, $row['total_cases']);
            array_push($total_death, $row['total_deaths']);
            array_push($total_recovered, $row['total_recovered']);
            array_push($active_cases, $row['active_cases']);
            array_push($total_tests, $row['total_tests']);
        }
    }

    // Menutup koneksi
    $conn->close();
    ?>

    <script>
    // Mengambil data dari PHP dan menyimpannya dalam variabel JavaScript
    var negara = <?php echo json_encode($negara); ?>;
    var totalCases = <?php echo json_encode($total_cases); ?>;
    var totalDeath = <?php echo json_encode($total_death); ?>;
    var totalRecovered = <?php echo json_encode($total_recovered); ?>;
    var activeCases = <?php echo json_encode($active_cases); ?>;
    var totalTests = <?php echo json_encode($total_tests); ?>;

    // Membuat line chart menggunakan Chart.js
    var ctx = document.getElementById('lineChart').getContext('2d');
    var lineChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: negara,
            datasets: [{
                label: 'Total Cases',
                data: totalCases,
                backgroundColor:"rgba(0,0,255,1.0)",
                borderColor: "rgba(0,0,255,0.1)",
                fill: false
            }, {
                label: 'Total Death',
                data: totalDeath,
                backgroundColor:"rgba(0,0,100,6.0)",
                borderColor: 'blue',
                fill: false
            }, {
                label: 'Total Recovered',
                data: totalRecovered,
                backgroundColor:"rgba(0,0,100,6.0)",
                borderColor: "rgba(0,0,100,0.1)",
                fill: false
            }, {
                label: 'Active Cases',
                data: activeCases,
                backgroundColor:"rgba(0,0,100,6.0)",
                borderColor: 'pink',
                fill: false
            }]
        },
        options: {
            responsive: true,
            title: {
                display: true,
                text: 'Line Chart'
            },
            scales: {
                x: {
                    display: true,
                    title: {
                        display: true,
                        text: 'Negara'
                    }
                },
                y: {
                    display: true,
                    title: {
                        display: true,
                        text: 'Jumlah'
                    }
                }
            }
        }
    });
    </script>
</body>
</html>
