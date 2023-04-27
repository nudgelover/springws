<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<style>
    #container {
        width: 600px;
        height: 400px;
        border: 2px solid red;
    }

    .highcharts-figure,
    .highcharts-data-table table {
        min-width: 310px;
        max-width: 800px;
        margin: 1em auto;
    }

    .highcharts-data-table table {
        font-family: Verdana, sans-serif;
        border-collapse: collapse;
        border: 1px solid #ebebeb;
        margin: 10px auto;
        text-align: center;
        width: 100%;
        max-width: 500px;
    }

    .highcharts-data-table caption {
        padding: 1em 0;
        font-size: 1.2em;
        color: #555;
    }

    .highcharts-data-table th {
        font-weight: 600;
        padding: 0.5em;
    }

    .highcharts-data-table td,
    .highcharts-data-table th,
    .highcharts-data-table caption {
        padding: 0.5em;
    }

    .highcharts-data-table thead tr,
    .highcharts-data-table tr:nth-child(even) {
        background: #f8f8f8;
    }

    .highcharts-data-table tr:hover {
        background: #f1f7ff;
    }

</style>
<script>
    let char01 = {
        init: function () {
            Highcharts.chart('container', {
                chart      : {
                    type: 'spline'
                },
                title      : {
                    text: 'Monthly Average Temperature'
                },
                subtitle   : {
                    text: 'Source: ' +
                        '<a href="https://en.wikipedia.org/wiki/List_of_cities_by_average_temperature" ' +
                        'target="_blank">Wikipedia.com</a>'
                },
                xAxis      : {
                    categories   : ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                        'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                    accessibility: {
                        description: 'Months of the year'
                    }
                },
                yAxis      : {
                    title : {
                        text: 'Temperature'
                    },
                    labels: {
                        formatter: function () {
                            return this.value + '°';
                        }
                    }
                },
                tooltip    : {
                    crosshairs: true,
                    shared    : true
                },
                plotOptions: {
                    spline: {
                        marker: {
                            radius   : 4,
                            lineColor: '#666666',
                            lineWidth: 1
                        }
                    }
                },
                series     : [{
                    name  : 'Tokyo',
                    marker: {
                        symbol: 'square'
                    },
                    data  : [5.2, 5.7, 8.7, 13.9, 18.2, 21.4, 25.0, 26, 22.8, 17.5, 12.1, 7.6]

                }, {
                    name  : 'Bergen',
                    marker: {
                        symbol: 'diamond'
                    },
                    data  : [1.0, 1.6, 3.3, 5.9, 10.5, 13.5, 14.5, 14.4, 11.5, 8.7, 4.7, 2.6]
                }, {
                    name  : 'Korea',
                    marker: {
                        symbol: 'diamond'
                    },
                    data  : [1.0, 1.6, 4.3, 5.9, 10.5, 18.5, 19.5, 20.4, 11.5, 9.7, 4.7, 2.6]
                }]
            });

        }
    };

    $(function () {
        char01.init();

    })
</script>
<div style="padding: 20px 50px" class="col-sm-8 text-left">

    <h3>chart01</h3>
    <figure class="highcharts-figure">
        <div id="container"></div>
        <p class="highcharts-description">
            This chart shows how symbols and shapes can be used in charts.
            Highcharts includes several common symbol shapes, such as squares,
            circles and triangles, but it is also possible to add your own
            custom symbols. In this chart, custom weather symbols are used on
            data points to highlight that certain temperatures are warm while
            others are cold.
        </p>
    </figure>

</div>
