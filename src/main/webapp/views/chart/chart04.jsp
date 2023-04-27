<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<style>
    .highcharts-figure,
    .highcharts-data-table table {
        min-width: 360px;
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

    .ld-label {
        width: 200px;
        display: inline-block;
    }

    .ld-url-input {
        width: 500px;
    }

    .ld-time-input {
        width: 40px;
    }
</style>

<script>
    let chart04 = {
        init: function () {
            var defaultData = 'http://127.0.0.1/logs/custinfo.log';
            var urlInput = document.getElementById('fetchURL');
            var pollingCheckbox = document.getElementById('enablePolling');
            var pollingInput = document.getElementById('pollingTime');

            function createChart() {
                Highcharts.chart('container', {
                    chart        : {
                        type: 'spline'
                    },
                    title        : {
                        text: 'Live Data'
                    },
                    accessibility: {
                        announceNewData: {
                            enabled              : true,
                            minAnnounceInterval  : 15000,
                            announcementFormatter: function (allSeries, newSeries, newPoint) {
                                if (newPoint) {
                                    return 'New point added. Value: ' + newPoint.y;
                                }
                                return false;
                            }
                        }
                    },
                    data         : {
                        csvURL         : urlInput.value,
                        enablePolling  : pollingCheckbox.checked === true,
                        dataRefreshRate: parseInt(pollingInput.value, 10)
                    }
                });

                if (pollingInput.value < 1 || !pollingInput.value) {
                    pollingInput.value = 1;
                }
            }

            urlInput.value = defaultData;

// We recreate instead of using chart update to make sure the loaded CSV
// and such is completely gone.
            pollingCheckbox.onchange = urlInput.onchange = pollingInput.onchange = createChart;

// Create the chart
            createChart();


        }
    };
    $(function () {
        chart04.init();
    })
</script>
<div style="padding: 20px 50px" class="col-sm-8 text-left">

    <h3>chart04</h3>
    <figure class="highcharts-figure">
        <div id="container"></div>
        <p class="highcharts-description">
            Datasets formatted in CSV or JSON can be fetched remotely using the
            <code>data</code> module. This chart shows how a chart can also be
            configured to poll against the remote source.
        </p>
    </figure>

    <div class="ld-row">
        <label class="ld-label">
            Enable Polling
        </label>
        <input type="checkbox" checked="checked" id="enablePolling"/>
    </div>
    <div class="ld-row">
        <label class="ld-label">
            Polling Time (Seconds)
        </label>
        <input class="ld-time-input" type="number" value="2" id="pollingTime"/>
    </div>
    <div class="ld-row">
        <label class="ld-label">
            CSV URL
        </label>
        <input class="ld-url-input" type="text" id="fetchURL"/>
    </div>
</div>