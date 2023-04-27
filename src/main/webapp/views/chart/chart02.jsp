<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<style>
    #container {
        width: 600px;
        height: 400px;
        border: 2px solid red;
    }

    #container {
        height: 400px;
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
    let chart02 = {
        init   : function () {
            $('#chart02 >button').on('click', () => {
                chart02.getdata();
                setInterval(
                    chart02.getdata, 5000)
            })
        },
        getdata: function () {
            $.ajax({
                url    : '/chart02',
                success: function (result) {
                    chart02.display(result);
                }
            });
        },
        display: function (result) {
            Highcharts.chart('container', {
                chart      : {
                    type     : 'column',
                    options3d: {
                        enabled: true,
                        alpha  : 10,
                        beta   : 25,
                        depth  : 70
                    }
                },
                title      : {
                    text : 'External trade in goods by country, Norway 2021',
                    align: 'left'
                },
                subtitle   : {
                    text : 'Source: ' +
                        '<a href="https://www.ssb.no/en/statbank/table/08804/"' +
                        'target="_blank">SSB</a>',
                    align: 'left'
                },
                plotOptions: {
                    column: {
                        depth: 25
                    }
                },
                xAxis      : {
                    categories: result.categories,
                    labels    : {
                        skew3d: true,
                        style : {
                            fontSize: '16px'
                        }
                    }
                },
                yAxis      : {
                    title: {
                        text  : 'NOK (million)',
                        margin: 20
                    }
                },
                tooltip    : {
                    valueSuffix: ' MNOK'
                },
                series     : [{
                    name: 'Total imports',
                    data: result.datas
                }]
            });

        }
    };

    $(function () {
        chart02.init();
        //문서가 시작하면 jsp91의 init을 작동해라
    })
</script>
<div id="chart02" style="padding: 20px 50px" class="col-sm-8 text-center">
    <button type="button" class="btn btn-default">Default</button>
    <figure class="highcharts-figure">
        <div id="container"></div>
        <p class="highcharts-description">
            Chart designed to show the difference between 0 and null in a 3D column
            chart. A null point represents missing data, while 0 is a valid value.
        </p>
    </figure>
</div>
