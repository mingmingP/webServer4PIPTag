// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';


// Area Chart Example
var data_tl = document.getElementsByClassName('tlist');//[10000, 30162, 26263, 18394, 18287, 28682, 31274, 33259, 25849, 24159];
var data_ll = document.getElementsByClassName('llist');//[234, 12552, 19953, 12444, 10333, 16666, 20346, 17569, 15449, 11159];
var data_hl = document.getElementsByClassName('hlist');//[10400, 10162, 26163, 16494, 18287, 18682, 11274, 20259, 22829, 14145];
var time = ["0 s", "1 s", "2 s", "3 s", "4 s", "5 s", "6 s", "7 s", "8 s", "9 s"];

var data_t = [];
var data_l = [];
var data_h = [];
for(i=0;i<10;i++){
  data_t[i] = data_tl[i].value;
  data_l[i] = data_ll[i].value;
  data_h[i] = data_hl[i].value;
}


var ctx = document.getElementById("myAreaChart");
var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: time,
    datasets: [{
      label: "Temperature",
      lineTension: 0.3,
      backgroundColor: "rgba(2,117,216,0.2)",
      borderColor: "rgba(2,117,216,1)",
      pointRadius: 5,
      pointBackgroundColor: "rgba(2,117,216,1)",
      pointBorderColor: "rgba(255,255,255,0.8)",
      pointHoverRadius: 5,
      pointHoverBackgroundColor: "rgba(2,117,216,1)",
      pointHitRadius: 50,
      pointBorderWidth: 2,
      data: data_t,
    },{
      label: "Light",
      lineTension: 0.3,
      backgroundColor: "rgba(46,139,87,0.2)",
      borderColor: "#80C49D",
      pointRadius: 5,
      pointBackgroundColor: "#80C49D",
      pointBorderColor: "rgba(255,255,255,0.8)",
      pointHoverRadius: 5,
      pointHoverBackgroundColor: "#80C49D",
      pointHitRadius: 50,
      pointBorderWidth: 2,
      data: data_l,
    },{
      label: "Humidity",
      lineTension: 0.3,
      backgroundColor: "rgba(178,34,34,0.2)",
      borderColor: "#e74c3c",
      pointRadius: 5,
      pointBackgroundColor: "#e74c3c",
      pointBorderColor: "rgba(255,255,255,0.8)",
      pointHoverRadius: 5,
      pointHoverBackgroundColor: "#e74c3c",
      pointHitRadius: 50,
      pointBorderWidth: 2,
      data: data_h,
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 10
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 1000,
          maxTicksLimit: 5
        },
        gridLines: {
          color: "rgba(0, 0, 0, .125)",
        },
      }],
    },
    legend: {
      display: false
    }
  }
});
