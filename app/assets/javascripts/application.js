// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//= require jquery
//= require jquery_ujs
//

GetData();
GetSwitch();

function getStyle(price,f1){
  if(document.getElementById(f1)==null || document.getElementById(f1)=="undefined") return price;
  var trc=document.getElementById(f1).innerHTML;
  var $r = /\d+(\.\d+)?/g;
  var trc1= trc.match($r);
  if(trc1==null){
    if (price=='0')
    {
      price='----';
    }
    return price;
  }else{
    if(price>trc1){
      if (price=='0')
      {
        price='----';
      }
      return "<font color=red>"+price+"</font>";
    }else if(price<trc1){
      if (price=='0')
      {
        price='----';
      }
      return "<font color=green>"+price+"</font>";
    }else{
      if (price=='0')
      {
        price='----';
      }
      return price;
    }
  }
}

function GetData() {
    var url = "/api/get_price1";
    $.ajax({
        type: "GET",
        url: url,
        dataType: "json",
        success: function (obj) {
            var obj = eval(obj);
            $("#Servertime").html(obj.CurrDate);
            for (var i = 0; i < obj.ProductPriceList.length; i++) {
                switch (obj.ProductPriceList[i].Symbol) {
                    case 'PMAG'://伦敦银
                        $("#silverBP1").html(getStyle(obj["ProductPriceList"][i].BP1,"silverBP1"));
                        $("#silverSP1").html(getStyle(obj["ProductPriceList"][i].SP1,"silverSP1"));
                        $("#silverHigh").html(getStyle(obj["ProductPriceList"][i].High,"silverHigh"));
                        $("#silverLow").html(getStyle(obj["ProductPriceList"][i].Low,"silverLow"));
                        break;
                    case 'PMAP'://伦敦铂
                        $("#platinumBP1").html(getStyle(obj["ProductPriceList"][i].BP1,"platinumBP1"));
                        $("#platinumSP1").html(getStyle(obj["ProductPriceList"][i].SP1,"platinumSP1"));
                        $("#platinumHigh").html(getStyle(obj["ProductPriceList"][i].High,"platinumHigh"));
                        $("#platinumLow").html(getStyle(obj["ProductPriceList"][i].Low,"platinumLow"));
                        break;
                    case 'PMAU'://伦敦金
                        $("#LondongoldBP1").html(getStyle(obj["ProductPriceList"][i].BP1,"LondongoldBP1"));
                        $("#LondongoldSP1").html(getStyle(obj["ProductPriceList"][i].SP1,"LondongoldSP1"));
                        $("#LondongoldHigh").html(getStyle(obj["ProductPriceList"][i].High,"LondongoldHigh"));
                        $("#LondongoldLow").html(getStyle(obj["ProductPriceList"][i].Low,"LondongoldLow"));
                        break;
                    case 'PMHKAUYH'://港金
                        $("#HKgoldBP1").html(getStyle(obj["ProductPriceList"][i].BP1,"HKgoldBP1"));
                        $("#HKgoldSP1").html(getStyle(obj["ProductPriceList"][i].SP1,"HKgoldSP1"));
                        $("#HKgoldHigh").html(getStyle(obj["ProductPriceList"][i].High,"HKgoldHigh"));
                        $("#HKgoldLow").html(getStyle(obj["ProductPriceList"][i].Low,"HKgoldLow"));
                        break;
                    case 'PMPD'://伦敦钯
                        $("#palladiumBP1").html(getStyle(obj["ProductPriceList"][i].BP1,"palladiumBP1"));
                        $("#palladiumSP1").html(getStyle(obj["ProductPriceList"][i].SP1,"palladiumSP1"));
                        $("#palladiumHigh").html(getStyle(obj["ProductPriceList"][i].High,"palladiumHigh"));
                        $("#palladiumLow").html(getStyle(obj["ProductPriceList"][i].Low,"palladiumLow"));
                        break;
                    case 'PMUDI'://美元指数
                        $("#dollarBP1").html(getStyle(obj["ProductPriceList"][i].BP1,"dollarBP1"));
                        $("#dollarSP1").html(getStyle(obj["ProductPriceList"][i].SP1,"dollarSP1"));
                        $("#dollarHigh").html(getStyle(obj["ProductPriceList"][i].High,"dollarHigh"));
                        $("#dollarLow").html(getStyle(obj["ProductPriceList"][i].Low,"dollarLow"));
                        break;
                    case 'SGPMUSDCNY'://美元/人民币
                        $("#yuanBP1").html(getStyle(obj["ProductPriceList"][i].BP1,"yuanBP1"));
                        $("#yuanSP1").html(getStyle(obj["ProductPriceList"][i].SP1,"yuanSP1"));
                        $("#yuanHigh").html(getStyle(obj["ProductPriceList"][i].High,"yuanHigh"));
                        $("#yuanLow").html(getStyle(obj["ProductPriceList"][i].Low,"yuanLow"));
                        break;
                        //case 'SGAg9999'://白银99.99
                        //    $("#silver99BP1").html(getStyle(obj["ProductPriceList"][i].BP1,");
                        //    $("#silver99SP1").html(getStyle(obj["ProductPriceList"][i].SP1,");
                        //    $("#silver99High").html(getStyle(obj["ProductPriceList"][i].High,");
                        //    $("#silver99Low").html(getStyle(obj["ProductPriceList"][i].Low,");
                        //    break;
                    case 'SGAgT+D'://白银(T+D)
                        $("#silverTDBP1").html(getStyle(obj["ProductPriceList"][i].BP1,"silverTDBP1"));
                        $("#silverTDSP1").html(getStyle(obj["ProductPriceList"][i].SP1,"silverTDSP1"));
                        $("#silverTDHigh").html(getStyle(obj["ProductPriceList"][i].High,"silverTDHigh"));
                        $("#silverTDLow").html(getStyle(obj["ProductPriceList"][i].Low,"silverTDLow"));
                        break;
                    case 'SGAu9995'://黄金99.95
                        $("#gold995BP1").html(getStyle(obj["ProductPriceList"][i].BP1,"gold995BP1"));
                        $("#gold995SP1").html(getStyle(obj["ProductPriceList"][i].SP1,"gold995SP1"));
                        $("#gold995High").html(getStyle(obj["ProductPriceList"][i].High,"gold995High"));
                        $("#gold995Low").html(getStyle(obj["ProductPriceList"][i].Low,"gold995Low"));
                        break;
                    case 'SGAu9999'://黄金99.99
                        $("#goldBP1").html(getStyle(obj["ProductPriceList"][i].BP1,"goldBP1"));
                        $("#goldSP1").html(getStyle(obj["ProductPriceList"][i].SP1,"goldSP1"));
                        $("#goldHigh").html(getStyle(obj["ProductPriceList"][i].High,"goldHigh"));
                        $("#goldLow").html(getStyle(obj["ProductPriceList"][i].Low,"goldLow"));
                        break;
                    case 'SH_AUTD'://黄金(T+D)
                        $("#goldTDBP1").html(getStyle(obj["ProductPriceList"][i].BP1,"goldTDBP1"));
                        $("#goldTDSP1").html(getStyle(obj["ProductPriceList"][i].SP1,"goldTDSP1"));
                        $("#goldTDHigh").html(getStyle(obj["ProductPriceList"][i].High,"goldTDHigh"));
                        $("#goldTDLow").html(getStyle(obj["ProductPriceList"][i].Low,"goldTDLow"));
                        break;
                        //case 'SGPT9995'://铂金99.95
                        //    $("#platinum995BP1").html(getStyle(obj["ProductPriceList"][i].BP1,");
                        //    $("#platinum995SP1").html(getStyle(obj["ProductPriceList"][i].SP1,");
                        //    $("#platinum995High").html(getStyle(obj["ProductPriceList"][i].High,");
                        //    $("#platinum995Low").html(getStyle(obj["ProductPriceList"][i].Low,");
                        //    break;
                    case 'BJ'://铂金
                        $("#BJBP1").html(getStyle(obj["ProductPriceList"][i].BP1,"BJBP1"));
                        $("#BJSP1").html(getStyle(obj["ProductPriceList"][i].SP1,"BJSP1"));
                        $("#BJHigh").html(getStyle(obj["ProductPriceList"][i].High,"BJHigh"));
                        $("#BJLow").html(getStyle(obj["ProductPriceList"][i].Low,"BJLow"));
                        break;
                    case 'PJ'://钯金
                        $("#BAJBP1").html(getStyle(obj["ProductPriceList"][i].BP1,"BAJBP1"));
                        $("#BAJSP1").html(getStyle(obj["ProductPriceList"][i].SP1,"BAJSP1"));
                        $("#BAJHigh").html(getStyle(obj["ProductPriceList"][i].High,"BAJHigh"));
                        $("#BAJLow").html(getStyle(obj["ProductPriceList"][i].Low,"BAJLow"));

                        break;
                    case 'HJ'://黄金
                        $("#HJBP1").html(getStyle(obj["ProductPriceList"][i].BP1,"HJBP1"));
                        $("#HJSP1").html(getStyle(obj["ProductPriceList"][i].SP1,"HJSP1"));
                        $("#HJHigh").html(getStyle(obj["ProductPriceList"][i].High,"HJHigh"));
                        $("#HJLow").html(getStyle(obj["ProductPriceList"][i].Low,"HJLow"));
                        break;
                    case 'BY'://白银
                        $("#BYBP1").html(getStyle(obj["ProductPriceList"][i].BP1,"BYBP1"));
                        $("#BYSP1").html(getStyle(obj["ProductPriceList"][i].SP1,"BYSP1"));
                        $("#BYHigh").html(getStyle(obj["ProductPriceList"][i].High,"BYHigh"));
                        $("#BYLow").html(getStyle(obj["ProductPriceList"][i].Low,"BYLow"));
                        break;
                    case 'PT950'://铂950
                        $("#BJ950BP1").html(getStyle(obj["ProductPriceList"][i].BP1,"BJ950BP1"));
                        $("#BJ950SP1").html("----");
                        $("#BJ950High").html("----");
                        $("#BJ950Low").html("----");
                        break;
                    case 'PD990'://钯990
                        $("#PJ990BP1").html(getStyle(obj["ProductPriceList"][i].BP1,"PJ990BP1"));
                        $("#PJ990SP1").html("----");
                        $("#PJ990High").html("----");
                        $("#PJ990Low").html("----");
                        break;
                    case 'HJ999'://千足金
                        $("#HJ999BP1").html(getStyle(obj["ProductPriceList"][i].BP1,"HJ999BP1"));
                        $("#HJ999SP1").html("----");
                        $("#HJ999High").html("----");
                        $("#HJ999Low").html("----");
                        break;
                }

            }
        }
    });
}

function GetSwitch() {
    $.get("/api/get_switch", function (data) {
        // var ds = $.parseJSON(data);
        var ds = data;
        if (ds.code == 0) {
            if (ds.off == 1) {
                $('#stock_t_status').html("开盘");
            } else {
                $('#stock_t_status').html("停盘");
            }
        }
    })
}

setInterval("GetData()", 3000); //每3秒钟执行一次
setInterval("GetSwitch()", 3000); //每3秒钟执行一次


