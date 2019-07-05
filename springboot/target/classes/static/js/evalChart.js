var evalChart = {
    url: {
        getData: "/getEvalData"
    },
    fn: {
        renderMain: function () {
            //ajax的回调函数
            function callback(data) {
                if (data.success) {
                    //alert("start");
                    evalChart.fn.drawEvalChart1(data);
                    evalChart.fn.drawEvalChart2(data);
                    evalChart.fn.drawEvalChart3(data);
                    //followTable.fn.drawCustomizedPieChart(data);
                    //alert("end");
                } else {
                    alert("错误：" + data.msg)
                }
            }

            var params = {};
            evalChart.fn.ajax(evalChart.url.getData, params, callback)
        },
        drawEvalChart1: function (data) {
            console.log("drawEvalChart1-1");

            var datas = data.data;
            console.log(data.data);
            var ranks = [], rmses = [], times = [];
            var k = 0;
            for (var i = 0; i < datas.length; i++) {
                var lambda = datas[i].lambda;
                var rank = datas[i].rank;
                var rmse = datas[i].rmse;
                var time = datas[i].time / 1000;
                var iteration = datas[i].iterations;
                if (iteration === 10 && lambda === 0.1) {
                    k++;
                    ranks.push(rank);
                    rmses.push(rmse);
                    times.push(time);
                    if (k === 6) break;
                }
            }
            console.log(ranks);
            console.log(rmses);
            console.log(times);

            option1 = {
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'cross',
                        crossStyle: {
                            color: '#999'
                        }
                    }
                },
                toolbox: {
                    feature: {
                        dataView: {show: true, readOnly: false},
                        magicType: {show: true, type: ['line', 'bar']},
                        restore: {show: true},
                        saveAsImage: {show: true}
                    }
                },
                legend: {
                    data: ['柱状', '折线']
                },
                xAxis: [
                    {
                        type: 'category',
                        data: ranks,
                        axisPointer: {
                            type: 'shadow'
                        }
                    }
                ],
                yAxis: [
                    {
                        type: 'value',
                        name: '均方误差',
                        min: 2,
                        max: 2.8,
                        interval: 0.2,
                        axisLabel: {
                            formatter: '{value}'
                        }
                    },
                    {
                        type: 'value',
                        name: 'rmse',
                        min: 2,
                        max: 2.8,
                        interval: 0.2,
                        axisLabel: {
                            formatter: '{value}'
                        }
                    }
                ],
                series: [
                    {
                        name: '柱状',
                        type: 'bar',
                        data: rmses
                    },
                    {
                        name: '折线',
                        type: 'line',
                        yAxisIndex: 1,
                        data: rmses
                    }
                ]
            };

            console.log("init1-1");
            var image1 = echarts.init(document.getElementById("evalChart1-1"), 'light');
            console.log("set1-1");
            image1.setOption(option1);
            console.log("drawEvalChart1-2");

            option2 = {
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'cross',
                        crossStyle: {
                            color: '#999'
                        }
                    }
                },
                toolbox: {
                    feature: {
                        dataView: {show: true, readOnly: false},
                        magicType: {show: true, type: ['line', 'bar']},
                        restore: {show: true},
                        saveAsImage: {show: true}
                    }
                },
                legend: {
                    data: ['柱状', '折线']
                },
                xAxis: [
                    {
                        type: 'category',
                        data: ranks,
                        axisPointer: {
                            type: 'shadow'
                        }
                    }
                ],
                yAxis: [
                    {
                        type: 'value',
                        name: '训练时间',
                        min: 0,
                        max: 30,
                        interval: 5,
                        axisLabel: {
                            formatter: '{value}'
                        }
                    },
                    {
                        type: 'value',
                        name: 'time',
                        min: 0,
                        max: 30,
                        interval: 5,
                        axisLabel: {
                            formatter: '{value}'
                        }
                    }
                ],
                series: [
                    {
                        name: '柱状',
                        type: 'bar',
                        data: times
                    },
                    {
                        name: '折线',
                        type: 'line',
                        yAxisIndex: 1,
                        data: times
                    }
                ]
            };

            //alert(document.getElementById("followChart1"));
            var image2 = echarts.init(document.getElementById("evalChart1-2"), 'light');
            image2.setOption(option2)
        },
        drawEvalChart2: function (data) {
            console.log("drawEvalChart2");


            var datas = data.data;
            console.log(data.data);
            var iterations = [], rmses = [], times = [];
            var k = 0;
            for (var i = 6; i < 11; i++) {
                var lambda = datas[i].lambda;
                var rmse = datas[i].rmse;
                var rank = datas[i].rank;
                var time = datas[i].time / 1000;
                var iteration = datas[i].iterations;
                if (rank === 10 && lambda === 0.1) {
                    k++;
                    iterations.push(iteration);
                    rmses.push(rmse);
                    times.push(time);
                    if (k === 6) break;
                }
            }
            option1 = {
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'cross',
                        crossStyle: {
                            color: '#999'
                        }
                    }
                },
                toolbox: {
                    feature: {
                        dataView: {show: true, readOnly: false},
                        magicType: {show: true, type: ['line', 'bar']},
                        restore: {show: true},
                        saveAsImage: {show: true}
                    }
                },
                legend: {
                    data: ['柱状', '折线']
                },
                xAxis: [
                    {
                        type: 'category',
                        data: iterations,
                        axisPointer: {
                            type: 'shadow'
                        }
                    }
                ],
                yAxis: [
                    {
                        type: 'value',
                        name: '均方误差',
                        min: 2,
                        max: 2.8,
                        interval: 0.2,
                        axisLabel: {
                            formatter: '{value}'
                        }
                    },
                    {
                        type: 'value',
                        name: 'rmse',
                        min: 2,
                        max: 2.8,
                        interval: 0.2,
                        axisLabel: {
                            formatter: '{value}'
                        }
                    }
                ],
                series: [
                    {
                        name: '柱状',
                        type: 'bar',
                        data: rmses
                    },
                    {
                        name: '折线',
                        type: 'line',
                        yAxisIndex: 1,
                        data: rmses
                    }
                ]
            };

            //alert(document.getElementById("followChart1"));
            var image1 = echarts.init(document.getElementById("evalChart2-1"), 'light');
            image1.setOption(option1);
            option2 = {
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'cross',
                        crossStyle: {
                            color: '#999'
                        }
                    }
                },
                toolbox: {
                    feature: {
                        dataView: {show: true, readOnly: false},
                        magicType: {show: true, type: ['line', 'bar']},
                        restore: {show: true},
                        saveAsImage: {show: true}
                    }
                },
                legend: {
                    data: ['柱状', '折线']
                },
                xAxis: [
                    {
                        type: 'category',
                        data: iterations,
                        axisPointer: {
                            type: 'shadow'
                        }
                    }
                ],
                yAxis: [
                    {
                        type: 'value',
                        name: '训练时间',
                        min: 0,
                        max: 10,
                        interval: 2,
                        axisLabel: {
                            formatter: '{value}'
                        }
                    },
                    {
                        type: 'value',
                        name: 'time',
                        min: 0,
                        max: 10,
                        interval: 2,
                        axisLabel: {
                            formatter: '{value}'
                        }
                    }
                ],
                series: [
                    {
                        name: '柱状',
                        type: 'bar',
                        data: times
                    },
                    {
                        name: '折线',
                        type: 'line',
                        yAxisIndex: 1,
                        data: times
                    }
                ]
            };

            //alert(document.getElementById("followChart1"));
            var image2 = echarts.init(document.getElementById("evalChart2-2"), 'light');
            image2.setOption(option2)
        },
        drawEvalChart3: function (data) {
            console.log("drawEvalChart3");

            var datas = data.data;
            console.log(data.data);
            var k = 0;
            var lambdas = [], rmses = [], times = [];
            for (var i = 11; i < 16; i++) {
                var lambda = datas[i].lambda;
                var rmse = datas[i].rmse;
                var time = datas[i].time / 1000;
                var rank = datas[i].rank;
                var iteration = datas[i].iterations;
                //alert(lambda+" "+rmse+" "+time)
                if (rank === 10 && iteration === 10) {
                    k++;
                    lambdas.push(lambda);
                    rmses.push(rmse);
                    times.push(time);
                    if (k === 6) break;
                }

            }

            option1 = {
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'cross',
                        crossStyle: {
                            color: '#999'
                        }
                    }
                },
                toolbox: {
                    feature: {
                        dataView: {show: true, readOnly: false},
                        magicType: {show: true, type: ['line', 'bar']},
                        restore: {show: true},
                        saveAsImage: {show: true}
                    }
                },
                legend: {
                    data: ['柱状', '折线']
                },
                xAxis: [
                    {
                        type: 'category',
                        data: lambdas,
                        axisPointer: {
                            type: 'shadow'
                        }
                    }
                ],
                yAxis: [
                    {
                        type: 'value',
                        name: '均方误差',
                        min: 2,
                        max: 2.8,
                        interval: 0.2,
                        axisLabel: {
                            formatter: '{value}'
                        }
                    },
                    {
                        type: 'value',
                        name: 'rmse',
                        min: 2,
                        max: 2.8,
                        interval: 0.2,
                        axisLabel: {
                            formatter: '{value}'
                        }
                    }
                ],
                series: [
                    {
                        name: '柱状',
                        type: 'bar',
                        data: rmses
                    },
                    {
                        name: '折线',
                        type: 'line',
                        yAxisIndex: 1,
                        data: rmses
                    }
                ]
            };

            console.log("init1-1");
            var image1 = echarts.init(document.getElementById("evalChart3-1"), 'light');
            console.log("set1-1");
            image1.setOption(option1);
            console.log("drawEvalChart1-2");

            option2 = {
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'cross',
                        crossStyle: {
                            color: '#999'
                        }
                    }
                },
                toolbox: {
                    feature: {
                        dataView: {show: true, readOnly: false},
                        magicType: {show: true, type: ['line', 'bar']},
                        restore: {show: true},
                        saveAsImage: {show: true}
                    }
                },
                legend: {
                    data: ['柱状', '折线']
                },
                xAxis: [
                    {
                        type: 'category',
                        data: lambdas,
                        axisPointer: {
                            type: 'shadow'
                        }
                    }
                ],
                yAxis: [
                    {
                        type: 'value',
                        name: '训练时间',
                        min: 0,
                        max: 30,
                        interval: 5,
                        axisLabel: {
                            formatter: '{value}'
                        }
                    },
                    {
                        type: 'value',
                        name: 'time',
                        min: 0,
                        max: 30,
                        interval: 5,
                        axisLabel: {
                            formatter: ''
                        }
                    }
                ],
                series: [
                    {
                        name: '柱状',
                        type: 'bar',
                        data: times
                    },
                    {
                        name: '折线',
                        type: 'line',
                        yAxisIndex: 1,
                        data: times
                    }
                ]
            };

            //alert(document.getElementById("followChart1"));
            var image2 = echarts.init(document.getElementById("evalChart3-2"), 'light');
            image2.setOption(option2)

        },
        ajax: function (url, parameters, successCallBackFun) {
            $.ajax({
                contentType: 'application/json',
                //请求方式
                type: "POST",
                //请求的url
                url: url,
                //参数
                data: parameters,
                cache: false,
                //ajax成功
                success: function (data) {
                    //成功的回调函数
                    successCallBackFun(data);
                },
                error: function (XMLHttpRequest, data) {
                    //错误的回调函数
                    alert(data);
                }
            });
        }
    }
};