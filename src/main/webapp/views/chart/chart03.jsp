<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<style>
    #c1 {
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


    /*    두번째 차트 스타일*/
    .highcharts-figure,
    .highcharts-data-table table {
        min-width: 320px;
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
    let chart03 = {
        init    : function () {
            this.getdata1();
            this.getdata2();
            this.getdata3();
        },
        getdata1: function () {
            $.ajax({
                url    : '/chart0301',
                success: function (result) {
                    chart03.display1(result)
                }
            });
        },
        getdata2: function () {
            $.ajax({
                url    : '/chart0302',
                success: function (result) {
                    chart03.display2(result)

                }
            });
        },
        getdata3: function () {
            $.ajax({
                url    : '/chart0303',
                success: function (result) {
                    chart03.display3(result)
                }
            });

        },
        display1: function (result) {
            Highcharts.chart('c1', {
                chart      : {
                    type     : 'pie',
                    options3d: {
                        enabled: true,
                        alpha  : 45
                    }
                },
                title      : {
                    text : 'Beijing 2022 gold medals by country',
                    align: 'left'
                },
                subtitle   : {
                    text : '3D donut in Highcharts',
                    align: 'left'
                },
                plotOptions: {
                    pie: {
                        innerSize: 100,
                        depth    : 45
                    }
                },
                series     : [{
                    name: 'Medals',
                    data: result
                }]
            });

        },
        display2: function (result) {
            Highcharts.chart('c2', {
                chart      : {
                    type  : 'packedbubble',
                    height: '100%'
                },
                title      : {
                    text : 'Carbon emissions around the world (2014)',
                    align: 'left'
                },
                tooltip    : {
                    useHTML    : true,
                    pointFormat: '<b>{point.name}:</b> {point.value}m CO<sub>2</sub>'
                },
                plotOptions: {
                    packedbubble: {
                        minSize        : '30%',
                        maxSize        : '120%',
                        zMin           : 0,
                        zMax           : 1000,
                        layoutAlgorithm: {
                            splitSeries          : false,
                            gravitationalConstant: 0.02
                        },
                        dataLabels     : {
                            enabled: true,
                            format : '{point.name}',
                            filter : {
                                property: 'y',
                                operator: '>',
                                value   : 250
                            },
                            style  : {
                                color      : 'black',
                                textOutline: 'none',
                                fontWeight : 'normal'
                            }
                        }
                    }
                },
                series     : result.series

            });

        },
        display3: function (result) {
        }

    };
    $(function () {
        chart03.init();
    })
</script>
<div style="padding: 20px 50px" class="col-sm-8 text-center">
    <div class="col-sm-4" style="background: #B4B4DC">
        <figure class="highcharts-figure">
            <div id="c1"></div>
            <p class="highcharts-description">
                A variation of a 3D pie chart with an inner radius added.
                These charts are often referred to as donut charts.
            </p>
        </figure>

    </div>
    <div class="col-sm-4" style="background: aliceblue">
        <figure class="highcharts-figure">
            <div id="c2"></div>
            <p class="highcharts-description">
                Packed bubble charts are visualizations where the size and optionally
                the color of the bubbles are used to visualize the data. The positioning
                of the bubbles is not significant, but is optimized for compactness.
                Try dragging the bubbles in this chart around, and see the effects.
            </p>
        </figure>

    </div>
    <div class="col-sm-4" style="background: antiquewhite">

    </div>
</div>
