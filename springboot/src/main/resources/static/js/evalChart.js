var evalChart = {
    url:{
        getData:"/getEvalData"
    },
    fn:{
        renderMain:function(){
            //ajax的回调函数
            function callback(data) {
                if(data.success){
                    //alert("start");
                    evalChart.fn.drawEvalChart1(data);
                    evalChart.fn.drawEvalChart2(data);
                    evalChart.fn.drawEvalChart3(data);
                    //followTable.fn.drawCustomizedPieChart(data);
                    //alert("end");
                }else{
                    alert("错误："+data.msg)
                }
            }
            var params={};
            evalChart.fn.ajax(evalChart.url.getData,params,callback)
        },
        drawEvalChart1:function(data){

            var datas=data.data;
            console.log(data.data);
            var rank=[],rmse=[],time=[];
            var k=0;
            for(var i=0;i<datas.length;i++){
                var lambda=datas[i].lambda;
                var ranks=datas[i].rank;
                var rmses=datas[i].rmse;
                var times=datas[i].time;
                var iterations=datas[i].iterations;
                if(iterations===10&&lambda===0.1){
                   k++;
                   rank.push(ranks);
                   rmse.push(rmses);
                   time.push(times);
                   if(k===6) break;
               }
            }

            option = {
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
                    data:['均方误差','训练时间']
                },
                xAxis: [
                    {
                        type: 'category',
                        data: rank,
                        axisPointer: {
                            type: 'shadow'
                        }
                    }
                ],
                yAxis: [
                    {
                        type: 'value',
                        name: '均方误差',
                        min: 0,
                        max: 3.5,
                        interval: 0.5,
                        axisLabel: {
                            formatter: '{value} '
                        }
                    },
                    {
                        type: 'value',
                        name: '训练时间',
                        min: 0,
                        max: 20000,
                        interval: 2000,
                        axisLabel: {
                            formatter: '{value} ms'
                        }
                    }
                ],
                series: [
                    {
                        name:'均方误差',
                        type:'bar',
                        data:rmse
                    },
                    {
                        name:'训练时间',
                        type:'line',
                        yAxisIndex: 1,
                        data:time
                    }
                ]
            };
            //alert(document.getElementById("followChart1"));
            var image = echarts.init(document.getElementById("evalChart1"),'macarons');
            image.setOption(option)
        },
        drawEvalChart2:function(data){

            var datas=data.data;
            console.log(data.data);
            var iterations=[],rmse=[],time=[];
            for(var i=6;i<11;i++){
                    var rmses=datas[i].rmse;
                    var times=datas[i].time;
                    var iteration=datas[i].iterations;
                iterations.push(iteration);
                    rmse.push(rmses);
                    time.push(times);
            }

            option = {
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
                    data:['均方误差','训练时间']
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
                        min: 0,
                        max: 3.5,
                        interval: 0.5,
                        axisLabel: {
                            formatter: '{value} '
                        }
                    },
                    {
                        type: 'value',
                        name: '训练时间',
                        min: 0,
                        max: 20000,
                        interval: 2000,
                        axisLabel: {
                            formatter: '{value} ms'
                        }
                    }
                ],
                series: [
                    {
                        name:'均方误差',
                        type:'bar',
                        data:rmse
                    },
                    {
                        name:'训练时间',
                        type:'line',
                        yAxisIndex: 1,
                        data:time
                    }
                ]
            };
            //alert(document.getElementById("followChart1"));
            var image = echarts.init(document.getElementById("evalChart2"),'macarons');
            image.setOption(option)
        },
        drawEvalChart3:function(data){

            var datas=data.data;
            console.log(data.data);
            var lambdas=[],rmses=[],times=[];
            for(var i=11;i<16;i++){
                var lambda=datas[i].lambda;
                var rmse=datas[i].rmse;
                var time=datas[i].time;
                //alert(lambda+" "+rmse+" "+time)
                lambdas.push(lambda);
                rmses.push(rmse);
                times.push(time);
            }

            option = {
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
                    data:['均方误差','训练时间']
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
                        min: 0,
                        max: 3.5,
                        interval: 0.5,
                        axisLabel: {
                            formatter: '{value} '
                        }
                    },
                    {
                        type: 'value',
                        name: '训练时间',
                        min: 0,
                        max: 20000,
                        interval: 2000,
                        axisLabel: {
                            formatter: '{value} ms'
                        }
                    }
                ],
                series: [
                    {
                        name:'均方误差',
                        type:'bar',
                        data:rmses
                    },
                    {
                        name:'训练时间',
                        type:'line',
                        yAxisIndex: 1,
                        data:times
                    }
                ]
            };
            //alert(document.getElementById("followChart1"));
            var image = echarts.init(document.getElementById("evalChart3"),'macarons');
            image.setOption(option)
        },
        ajax:function(url,parameters,successCallBackFun){
            $.ajax({
                contentType : 'application/json',
                //请求方式
                type: "POST",
                //请求的url
                url: url,
                //参数
                data: parameters,
                cache:false,
                //ajax成功
                success: function (data) {
                    //成功的回调函数
                    successCallBackFun(data);
                },
                error: function (XMLHttpRequest,data) {
                    //错误的回调函数
                    alert(data);
                }
            });
        },
    }
};