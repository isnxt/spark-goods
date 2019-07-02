var followChartSingle = {
    url:{
        getData:"/getSingleFollowData"
    },
    fn:{
        renderMain:function(){
            //ajax的回调函数
            function callback(data) {
                if(data.success){
                    //alert("start");
                    followChartSingle.fn.drawChart1(data);
                    followChartSingle.fn.drawChart2(data);

                }else{
                    alert("错误："+data.msg)
                }
            }
            var params={};
            followChartSingle.fn.ajax(followChartSingle.url.getData,params,callback)
        },
        drawChart1:function(data){
            var datelist=[],valuelist=[];
            var datas=data.data;
            var k=0;
            for(var i=0;i<datas.length;i++){
                datelist.push(k);
                k+=5;
                valuelist.push(datas[i].windowFollowValue);
            }
            console.log(datelist);
            console.log(valuelist);
            option = {
                xAxis: {
                    type: 'category',
                    data: datelist
                },
                yAxis: {
                    type: 'value'
                },
                series: [{
                    data: valuelist,
                    type: 'line'
                }]
            };
            var image = echarts.init(document.getElementById("singleValueChart1"),'macarons');
            image.setOption(option)
        },
        drawChart2:function(data){
            var datelist=[],valuelist=[];
            var datas=data.data;
            var k=0;
            for(var i=0;i<datas.length;i++){
                datelist.push(k);
                k+=5;
                valuelist.push(datas[i].windowFollowValue);
            }
            console.log(datelist);
            console.log(valuelist);
            option = {
                tooltip : {
                    trigger: 'axis',
                    axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                        type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                    }
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis : [
                    {
                        type : 'category',
                        data : datelist,
                        axisTick: {
                            alignWithLabel: true
                        }
                    }
                ],
                yAxis : [
                    {
                        type : 'value'
                    }
                ],
                series : [
                    {
                        name:'直接访问',
                        type:'bar',
                        barWidth: '60%',
                        data:valuelist
                    }
                ]
            };

            var image = echarts.init(document.getElementById("singleValueChart2"),'macarons');
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
        }
    }
};