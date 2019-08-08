(function($){$.fn.promptumenu=function(options){var settings=$.extend({'columns':4,'rows':4,'direction':'horizontal','width':'auto','height':'auto','duration':500,'pages':true,'showPage':true,'inertia':200},options);return this.each(function(){var $this=$(this);var properties;var cursor={x:0,y:1,page:1};var cells={'width':0,'height':0,'pages':1,'current_page':1};var methods={go_to:function(index,easing,webkit){if(easing===undefined){easing='swing';}
if(webkit===undefined){webkit=false;}
var anim,anim_css;if(settings.direction=='vertical'){anim={'top':(index-1)*properties.height*(-1)};anim_css={'-webkit-transform':'translate3d(0px, '+((index-1)*properties.height*(-1))+'px, 0px)'};}else{anim={'left':(index-1)*properties.width*(-1)};anim_css={'-webkit-transform':'translate3d('+((index-1)*properties.width*(-1))+'px, 0px, 0px)'};}
if(webkit){$this.css({'-webkit-transition-property':'-webkit-transform','-webkit-transition-duration':settings.duration+'ms','-webkit-transition-timing-function':'ease-out'});$this.css(anim_css);$this.data('ppos',(index-1)*properties.width*(-1));}
if(navigator.userAgent.indexOf("Firefox")>0){$this.animate(anim,settings.duration,easing);}
if(!webkit&&navigator.userAgent.indexOf("Firefox")<=0){$this.animate(anim,settings.duration,easing);}
$this.parent('.promptumenu_window').find('.promptumenu_nav a.active').removeClass('active');$this.parent('.promptumenu_window').find('.promptumenu_nav a:nth-child('+(index)+')').addClass('active');cells.current_page=index;},next_page:function(){methods.go_to(cells.current_page+1);},prev_page:function(){methods.go_to(cells.current_page-1);}};if($this.data('promptumenu')){console.error('You are calling promptumenu for an element more than twice. Please have a look.');}else{$this.data('promptumenu',true);$this.data('ppos',0);properties={'width':(settings.width=='auto')?$this.width():settings.width,'height':(settings.height=='auto')?$this.height():settings.height,'margin':$this.css('margin'),'position':($this.css('position')=='absolute')?'absolute':'relative','top':$this.css('top'),'right':$this.css('right'),'bottom':$this.css('bottom'),'left':$this.css('left'),'padding':0,'display':'block','overflow':'visible'};cells.width=properties.width/settings.columns;cells.height=properties.height/settings.rows;$this.wrap('<div class="promptumenu_window" />');$this.parent('.promptumenu_window').css(properties);$this.css({'display':'block','position':'absolute','list-style':'none','overflow':'visible','height':'auto','width':'auto','top':0,'left':0,'margin':0,'padding':0});$this.children('li').css({'display':'block','position':'absolute','margin':0});var lengths=$this.children('li').length;$this.children('li').each(function(i){var $li=$(this);$li.css({"width":settings.width/settings.columns+"px"});cursor.x+=1;if(cursor.x>settings.columns){cursor.x=1;cursor.y+=1;}
if(cursor.y>settings.rows){cursor.x=1;cursor.y=1;cursor.page+=1;}
$li.data('layout',$.extend({},cursor));if(settings.direction=='vertical'){$li.css({'top':Math.round((cursor.y*cells.height-cells.height/2)-($li.height()/2)+(cursor.page-1)*properties.height),'left':Math.round((cursor.x*cells.width-cells.width/2)-($li.width()/2))});$li.find('img').bind('load',function(){var cursor=$li.data('layout');$li.css({'top':Math.round((cursor.y*cells.height-cells.height/2)-($li.height()/2)+(cursor.page-
1)*properties.height),'left':Math.round((cursor.x*cells.width-cells.width/2)-($li.width()/2))});});}else{var li_left=cells.width*i;$li.css({'top':0,'left':li_left});$li.find('img').bind('load',function(){var cursor=$li.data('layout');$li.css({'top':Math.round((cursor.y*cells.height-cells.height/2)-($li.height()/2)),'left':li_left});});}});cells.pages=cursor.page;$this.data('promptumenu_page_count',cells.pages);if(cells.pages>1&&settings.pages==true&&settings.showPage==true){var page_links='<a class="active">Page 1</a>';for(i=2;i<=cells.pages;i++){page_links=page_links+'<a>Page '+i+'</a>';}
$this.parent('div.promptumenu_window').append('<div class="promptumenu_nav">'+page_links+'</div>');$this.parent('div.promptumenu_window').find('.promptumenu_nav a').bind('click.promptumenu',function(){methods.go_to($(this).index()+1);});}
if(settings.direction=='vertical'){$this.css({'width':properties.width,'height':properties.height*cells.pages});}else{$this.css({'width':properties.width*cells.pages,'height':properties.height});}
$this.bind('mousedown.promptumenu',function(mdown){$this.stop(true,false);var init_pos=$this.position();var click={'x':mdown.pageX,'y':mdown.pageY};var delta={'x':0,'y':0};var mmove_event=new Array();$(document).bind('mousemove.promptumenu',function(mmove){var date=new Date();var this_event={'time':date.getTime(),'x':mmove.pageX,'y':mmove.pageY};while(mmove_event.length>4){mmove_event.shift();}
if(settings.direction=='vertical'){delta.y=mmove.pageY-click.y;$this.css('top',init_pos.top+delta.y);}else{delta.x=mmove.pageX-click.x;$this.css('left',init_pos.left+delta.x);}
mmove_event.push(this_event);});$(document).bind('mouseup.promptumenu',function(mup){$(document).unbind('.promptumenu');var date=new Date();var delta_start=mmove_event[0];if(delta_start==undefined){return;}
var delta_end={'time':date.getTime(),'x':mup.pageX,'y':mup.pageY};var event_delta={'time':(delta_end.time-delta_start.time),'x':(delta_end.x-delta_start.x),'y':(delta_end.y-delta_start.y)};var speed={'x':event_delta.x/event_delta.time,'y':event_delta.y/event_delta.time};if(settings.direction=='vertical'){var pos=init_pos.top+delta.y+speed.y*settings.inertia;if(pos<((-1)*properties.height*(cells.pages-1))){pos=(-1)*properties.height*(cells.pages-1);}else if(pos>0){pos=0;}
if(settings.pages){var snap_to_page=Math.round((-pos)/properties.height);methods.go_to(snap_to_page+1,'inertia');}else{$this.animate({'top':pos},Math.abs(speed.y*settings.inertia),'inertia');}}else{var pos=init_pos.left+delta.x+speed.x*settings.inertia;if(pos<((-1)*properties.width*(cells.pages-1))){pos=(-1)*properties.width*(cells.pages-1);}else if(pos>0){pos=0;}
if(settings.pages){var snap_to_page=Math.round((-pos)/properties.width);methods.go_to(snap_to_page+1,'inertia');}else{$this.animate({'left':pos},Math.abs(speed.x*settings.inertia),'inertia');}}});});try{var tinit_pos,tclick,tdelta;var tmove_event=new Array();var touchmove=function(tmove){console.log($(this));tmove.preventDefault();var date=new Date();var this_event={'time':date.getTime(),'x':tmove.touches[0].pageX,'y':tmove.touches[0].pageY};while(tmove_event.length>4){tmove_event.shift();}
if(settings.direction=='vertical'){tdelta.y=tmove.touches[0].pageY-tclick.y;$this.css('-webkit-transform','translate3d(0px, '+(tinit_pos+tdelta.y)+'px, 0px)');}else{tdelta.x=tmove.touches[0].pageX-tclick.x;$this.css('-webkit-transform','translate3d('+(tinit_pos+tdelta.x)+'px, 0px, 0px)');}
tmove_event.push(this_event);};var touchend=function(tend){document.removeEventListener('touchmove',touchmove,false);document.removeEventListener('touchend',touchend,false);var date=new Date();var delta_start=tmove_event[0];if(delta_start==undefined){return;}
var delta_end=tmove_event[tmove_event.length-1];var event_delta={'time':(delta_end.time-delta_start.time),'x':(delta_end.x-delta_start.x),'y':(delta_end.y-delta_start.y)};var speed={'x':event_delta.x/event_delta.time,'y':event_delta.y/event_delta.time};if(settings.direction=='vertical'){if(isNaN(speed.y)){speed.y=2;}
$this.css({'-webkit-transition-duration':Math.abs(speed.y*settings.inertia*3)+'ms','-webkit-transition-timing-function':'ease-out'});var pos=tinit_pos+tdelta.y+speed.y*settings.inertia;if(pos<((-1)*properties.height*(cells.pages-1))){pos=(-1)*properties.height*(cells.pages-1);}else if(pos>0){pos=0;}
if(settings.pages){var snap_to_page=Math.round((-pos)/properties.height);methods.go_to(snap_to_page+1,'inertia',true);}else{$this.css('-webkit-transform','translate3d(0px, '+pos+'px, 0px)');$this.data('ppos',pos);}}else{if(isNaN(speed.x)){speed.x=2;}
$this.css({'-webkit-transition-duration':Math.abs(speed.y*settings.inertia*3)+'ms','-webkit-transition-timing-function':'ease-out'});var pos=tinit_pos+tdelta.x+speed.x*settings.inertia;if(pos<((-1)*properties.width*(cells.pages-1))){pos=(-1)*properties.width*(cells.pages-1);}else if(pos>0){pos=0;}
if(settings.pages){var snap_to_page=Math.round((-pos)/properties.width);methods.go_to(snap_to_page+1,'inertia',true);}else{$this.css('-webkit-transform','translate3d('+pos+'px, 0px, 0px)');$this.data('ppos',pos);}}};$this[0].addEventListener('touchstart',function(tstart){console.log($(this));$this.unbind('.promptumenu');$this.stop(true,false);$this.css({'-webkit-transition-duration':'0ms'});var date=new Date();tinit_pos=$this.data('ppos');tclick={'x':tstart.touches[0].pageX,'y':tstart.touches[0].pageY,'time':date.getTime()};tdelta={'x':0,'y':0};tmove_event=new Array();document.addEventListener('touchmove',touchmove,false);document.addEventListener('touchend',touchend,false);document.addEventListener('touchcancel',touchend,false);},false);}catch(error){}}});};})(jQuery);jQuery.extend(jQuery.easing,{inertia:function(x,t,b,c,d){return c*((t=t/d-1)*t*t+1)+b;}});function t(date_,type,length_){$('input[name=date_]').val(date_);setTimeHtml(date_,type);setDateHtml(length_);var w=$(window).width();$('ul.promptu-menu2').promptumenu({width:w,height:60,rows:1,columns:4,direction:'horizontal',pages:false});$('.date_').click(function(){$('.date_').removeClass('active');$(this).addClass('active');setTimeHtml($(this).attr('val'),type);$('input[name=date_]').val($(this).attr('val'));$('input[name=time_]').val('');});var h=$(window).height();$('.mask-time').height(h);var h2=h-$('.time-area').height();$('.time-area').css("margin-top",h2);$('.mask-time').click(function(){$('.mask-time,.time-area').css("display","none");});}
function setDateHtml(l){var nowDate=getNowFormatDate().split(' ');if(l==1){var endDate=getNextMonth(nowDate[0]);var n=10;}else{var endDate=getNextMonth(getNextMonth(getNextMonth(nowDate[0])));var n=90;}
var endDateStamp=Date.parse(new Date(endDate))/1000;var nowDateStamp=Date.parse(new Date(nowDate[0]))/1000;var returnDate=[];var DateHtml='';for(var i=0;i<n;i++){var newDate=new Date();newDate.setTime((nowDateStamp+(86400*i))*1000);var DataArray=newDate.toISOString().split('T');if(i==0){var d='今天';}else if(i==1){var d='明天';}else if(i==2){var d='后天';}else{var weekDay=["星期天","星期一","星期二","星期三","星期四","星期五","星期六"];var dateStr=DataArray[0];var myDate=new Date(Date.parse(dateStr.replace(/-/g,"/")));var d=weekDay[myDate.getDay()];}
var dateSplit=DataArray[0].split('-');var formatDate=dateSplit[1]+'月'+dateSplit[2]+'日'
if(i==0){DateHtml+='<li class="active date_"  val="'+DataArray[0]+'">'+d+'<br>'+formatDate+'</li>';}else{DateHtml+='<li class="date_" val="'+DataArray[0]+'">'+d+'<br>'+formatDate+'</li>';}
var DayDateArray=[d,DataArray[0]];returnDate[i]=DayDateArray;}
$('.promptu-menu2').html(DateHtml);}
function setTimeHtml(date_,type){var nowDate=getNowFormatDate().split(' ');var nowTime=nowDate[1].split(':');var halfHourArray=gethalfHourArray(type);var returnHtml='';if(nowDate[0]==date_){if(type=='halfHour'){if(parseInt(nowTime[0])+3>=19){for(var i=0;i<halfHourArray.length;i++){returnHtml+='<div class="time-table disabled">'+
'<div>'+halfHourArray[i]+'<span class="font11">约满</span></div>'+
'</div>';}}else{if(nowTime[1]>30){n=parseInt(nowTime[0])+4+':00';}else if(nowTime[1]=='00'){n=parseInt(nowTime[0])+3+':00';}else{n=parseInt(nowTime[0])+3+':30';}
for(var i=0;i<halfHourArray.length;i++){if(i<getArrayKey(gethalfHourArray('halfHour'),n)){returnHtml+='<div class="time-table disabled">'+
'<div>'+halfHourArray[i]+'<span class="font11">约满</span></div>'+
'</div>';}else{returnHtml+="<div class='time-table' >"+
"<div>"+halfHourArray[i]+"</div>"+
"</div>";}}}}else{var nowH=parseInt(nowTime[0])+3;if(parseInt(nowTime[1])>0){nowH=nowH+1;}
if(nowH<10){h='0'+nowH;}else{h=nowH;}
for(var i=0;i<halfHourArray.length;i++){if(i<getArrayKey(gethalfHourArray(),h+':00')){returnHtml+='<div class="time-table disabled">'+
'<div>'+halfHourArray[i]+'<span class="font11">约满</span></div>'+
'</div>';}else{if(/type=(\d+)/.exec(window.location.search)[1]=='33'){if(i>=0&&i<=4){returnHtml+="<div class='time-table' >"+
"<div>"+halfHourArray[i]+"</div>"+
"</div>";}else{returnHtml+="<div class='time-table disabled' style='line-height:50px;padding-top:0'>"+
"<div>"+halfHourArray[i]+"</div>"+
"</div>";}}else if(/type=(\d+)/.exec(window.location.search)[1]=='34'){if(i>=10&&i<=12){returnHtml+="<div class='time-table' >"+
"<div>"+halfHourArray[i]+"</div>"+
"</div>";}else{returnHtml+="<div class='time-table disabled' style='line-height:50px;padding-top:0'>"+
"<div>"+halfHourArray[i]+"</div>"+
"</div>";}}else if(/type=(\d+)/.exec(window.location.search)[1]=='20'){if(i>=0&&i<=10){returnHtml+="<div class='time-table' >"+
"<div>"+halfHourArray[i]+"</div>"+
"</div>";}else{returnHtml+="<div class='time-table disabled' style='line-height:50px;padding-top:0'>"+
"<div>"+halfHourArray[i]+"</div>"+
"</div>";}}else{returnHtml+="<div class='time-table' >"+
"<div>"+halfHourArray[i]+"</div>"+
"</div>";}}}}}else{if(/type=(\d+)/.exec(window.location.search)[1]=='33'){for(var i=0;i<halfHourArray.length;i++){if(i>=0&&i<=4){returnHtml+="<div class='time-table' >"+
"<div>"+halfHourArray[i]+"</div>"+
"</div>";}else{returnHtml+="<div class='time-table disabled' style='line-height:50px;padding-top:0'>"+
"<div>"+halfHourArray[i]+"</div>"+
"</div>";}}}else if(/type=(\d+)/.exec(window.location.search)[1]=='34'){for(var i=0;i<halfHourArray.length;i++){if(i>=10&&i<=12){returnHtml+="<div class='time-table' >"+
"<div>"+halfHourArray[i]+"</div>"+
"</div>";}else{returnHtml+="<div class='time-table disabled' style='line-height:50px;padding-top:0'>"+
"<div>"+halfHourArray[i]+"</div>"+
"</div>";}}}else if(/type=(\d+)/.exec(window.location.search)[1]=='20'){for(var i=0;i<halfHourArray.length;i++){if(i>=0&&i<=10){returnHtml+="<div class='time-table' >"+
"<div>"+halfHourArray[i]+"</div>"+
"</div>";}else{returnHtml+="<div class='time-table disabled' style='line-height:50px;padding-top:0'>"+
"<div>"+halfHourArray[i]+"</div>"+
"</div>";}}}else{for(var i=0;i<halfHourArray.length;i++){returnHtml+="<div class='time-table' >"+
"<div>"+halfHourArray[i]+"</div>"+
"</div>";}}}
$('.time-choose-table').html(returnHtml);$('.time-table').click(function(){if($(this).attr('class')=='time-table'){$('.time-table').removeClass('choosed');$(this).addClass('choosed');$('input[name=time_]').val($(this).text()+':00');}});}
function getArrayKey(arr,val){for(var i=0;i<arr.length;i++){if(arr[i]==val){return i;}}}
function gethalfHourArray(type){if(type=='halfHour'){return['09:00','09:30','10:00','10:30','11:00','11:30','12:00','12:30','13:00','13:30','14:00','14:30','15:00','15:30','16:00','16:30','17:00','17:30','18:00','18:30','19:00'];}
return['08:00','09:00','10:00','11:00','12:00','13:00','14:00','15:00','16:00','17:00','18:00','19:00','20:00','21:00','22:00'];}
function getNowFormatDate(){var date=new Date();var seperator1="-";var seperator2=":";var month=date.getMonth()+1;var strDate=date.getDate();if(month>=1&&month<=9){month="0"+month;}
if(strDate>=0&&strDate<=9){strDate="0"+strDate;}
var currentdate=date.getFullYear()+seperator1+month+seperator1+strDate+
" "+date.getHours()+seperator2+date.getMinutes()+
seperator2+date.getSeconds();return currentdate;}
function getNextMonth(date){var arr=date.split('-');var year=arr[0];var month=arr[1];var day=arr[2];var days=new Date(year,month,0);days=days.getDate();var year2=year;var month2=parseInt(month)+1;if(month2==13){year2=parseInt(year2)+1;month2=1;}
var day2=day;var days2=new Date(year2,month2,0);days2=days2.getDate();if(day2>days2){day2=days2;}
if(month2<10){month2='0'+month2;}
var t2=year2+'-'+month2+'-'+day2;return t2;}