<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
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

    #c2 {
        height: 400px;
    }

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
    let chart05 = {
        init    : function () {
            $('#get_btn').click(function () {
                var year = $('#sel1').val();
                chart05.getdata(year);
            })
        },
        getdata : function (year) {
            $.ajax({
                url    : '/chart05',
                data   : {
                    'year': year
                },
                success: function (result) {
                    chart05.display1(result);
                    chart05.display2(result);
                }
            });
        },
        display1: function (result) {
            Highcharts.chart('c1', {
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
                    name  : 'Korea',
                    marker: {
                        symbol: 'square'
                    },
                    data  : result
                }]
            });


        },
        display2: function (result) {
            Highcharts.chart('c2', {
                chart: {
                    type: 'column',
                    options3d: {
                        enabled: true,
                        alpha: 10,
                        beta: 25,
                        depth: 70
                    }
                },
                title: {
                    text: 'External trade in goods by country, Norway 2021',
                    align: 'left'
                },
                subtitle: {
                    text: 'Source: ' +
                        '<a href="https://www.ssb.no/en/statbank/table/08804/"' +
                        'target="_blank">SSB</a>',
                    align: 'left'
                },
                plotOptions: {
                    column: {
                        depth: 25
                    }
                },
                xAxis: {
                    categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                        'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                    labels: {
                        skew3d: true,
                        style: {
                            fontSize: '16px'
                        }
                    }
                },
                yAxis: {
                    title: {
                        text: 'NOK (million)',
                        margin: 20
                    }
                },
                tooltip: {
                    valueSuffix: ' MNOK'
                },
                series: [{
                    name: 'Total imports',
                    data: result
                }]
            });


        }
    };

    $(function () {
        chart05.init();
    })
</script>
<div style="padding: 20px 50px" class="col-sm-8 text-left">
    <h3>chart05</h3>
    <div class="form-group col-sm-12">
        <label for="sel1">Year:</label>
        <select class="form-control" id="sel1">
            <c:forEach begin="2010" end="2020" var="year">
                <option value="${year}">${year}</option>

            </c:forEach>


        </select>
        <button id="get_btn" class="btn">GET</button>
    </div>
    <div class="row">
        <div id="c1" class="col-sm-6"></div>
        <div id="c2" class="col-sm-6">
        </div>
    </div>


</div>
