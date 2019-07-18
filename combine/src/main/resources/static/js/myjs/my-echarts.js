$(function () {
    var myChart = echarts.init(document.getElementById('myEchartsWIFI'));
    var option = {
        tooltip : {
            trigger: 'axis'
        },
        legend: {
            data:['人均流量','当日入网人数']
        },
        toolbox: {
            show : true,
            feature : {
                mark : {show: true},
                dataView : {show: true, readOnly: false},
                /*magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},*/
                restore : {show: true},/*刷新*/
                saveAsImage : {show: true}/*下载*/
            }
        },
        calculable : true,
        xAxis : [
            {
                type : 'category',
                boundaryGap : false,
                data : ['2019-04-01','2019-04-02','2019-04-03','2019-04-04','2019-04-05','2019-04-06','2019-04-07']
            }
        ],
        yAxis : [
            {
                type : 'value'
            }
        ],
        series : [
            {
                name:'人均流量',
                type:'line',
                stack: '总量',
                data:[120, 132, 101, 134, 90, 230, 210]
            },
            {
                name:'当日入网人数',
                type:'line',
                stack: '总量',
                data:[220, 182, 191, 234, 290, 330, 310]
            }
        ]
    };
    myChart.setOption(option);

// 基于准备好的dom，初始化echarts实例
    var myChart2 = echarts.init(document.getElementById('myEchartsSave'));
// 指定图表的配置项和数据
    var option2 = {
        title: {
            text: 'ECharts 示例'
        },
        tooltip: {},
        legend: {
            data:['销量']
        },
        xAxis: {
            data: ["LED广告机","LED灯杆屏","户外LED显示屏","街道广告机","收费站广告机","高铁广告机"],
            type: 'category',
            axisLabel: {
                interval: 0,    //强制文字产生间隔
                rotate: 0,     //文字逆时针旋转45°
                textStyle: {    //文字样式
                    color: "black",
                    fontSize: 12,
                    fontFamily: 'Microsoft YaHei'
                }
            }
        },
        yAxis: {},
        series: [{
            name: '销量',
            type: 'bar',
            data: [5, 20, 36, 10, 10, 20],
            itemStyle:{
                normal:{
                    color:'yellow',
                }
            }
        }]
    };
// 使用刚指定的配置项和数据显示图表。
    myChart2.setOption(option2);


//根据窗口的大小变动图表 --- 重点
    window.onresize = function(){
        myChart.resize();
        myChart2.resize();
    }
});