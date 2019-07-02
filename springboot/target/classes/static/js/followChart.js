var followChart = {
    url:{
        getData:"/getFollowData"
    },
    fn:{
        renderMain:function(){
            //ajax的回调函数
            function callback(data) {
                if(data.success){
                    //alert("start");
                    followChart.fn.drawPieChart1(data);
                    followChartWindow.fn.drawPieChart2(data);
                    //alert("end");
                }else{
                    alert("错误："+data.msg)
                }
            }
            var params={};
            followChart.fn.ajax(followChart.url.getData,params,callback)
        },
        drawPieChart1:function(data){

            var datas=data.data;
            var result=[];
            for(var i=0;i<datas.length;i++){
                //alert(datas[i])
                var itemID=datas[i].itemID;
                var followValue=datas[i].followValue;
                var dict={value:followValue,name:itemID};
                result.push(dict)
            }
            option = {
                tooltip : {
                    trigger: 'item',
                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    top:20,
                    left: 'left',
                    data: result
                },
                series : [
                    {
                        name: '访问来源',
                        type: 'pie',
                        radius : '55%',
                        center: ['50%', '60%'],
                        data:result,
                        itemStyle: {
                            emphasis: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    }
                ]
            };

            //alert(document.getElementById("followChart1"));
            var image = echarts.init(document.getElementById("followChart1"),'macarons');
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