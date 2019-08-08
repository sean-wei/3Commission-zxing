<?php defined('IN_IA') or exit('Access Denied');?>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<div class="clearfix posfixed">
    <div class="menu_icon clear">
        <div class="Inn01-erSiteTop">
            <a href="javascript:;" class="NavBtn ">
                <div class="menu-handle clearfix"><span></span> <span></span> <span></span></div>
            </a>
        </div>
        <div class="tiaotlNav"><img src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/images/logo.png" class="IndexLogo"></div>
        <div class="Inn01-erSiteTop">
            <a href="javascript:window.history.back(-1);" class="mxjhui"><img src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/images/ke02.png" class="ke02"></a>
        </div>
    </div>
</div>


<!--todo 修改首页导航-->
<!--手机弹出导航-->
<div class="wrap_menu hidden-md hidden-lg">
    <ul>
        <li class="menu_close">X</li>
        <li><span class="jjki"> <a style=" background: rgba(255,255,255,0);  ">伊莱美全国连锁整形机构</a></span> </li>


        <li class="menu_lists"> <span class="jjki"> <a href="<?php  echo mobileUrl('')?>">首页</a> </span></li>


        <?php  if(is_array($parentCate)) { foreach($parentCate as $pcate) { ?>
        <li class="menu_lists">
            <span class="jjki">
                <a href="<?php  echo mobileUrl('shop/category')?>&cate=<?php  echo $pcate['id'];?>"><?php  echo $pcate['name'];?></a>
            </span>
            <!--<p class="right">+</p>-->

            <!--<div class="wrap_menu_2">-->
                <!--<a href=""> <i></i> <span>公司简介</span> </a>-->
                <!--<a href=""> <i></i> <span>组织架构</span> </a>-->
                <!--<a href=""> <i></i> <span>专业资质</span> </a>-->
            <!--</div>-->
        </li>
        <?php  } } ?>

        <!--<li class="menu_lists">-->
            <!--<span class="jjki"><a href="">企业动态</a></span>-->
            <!--<p class="right">+</p>-->
            <!--<div class="wrap_menu_2">-->
                <!--<a href=""> <i></i> <span>房地产评估（全国壹级资质）</span> </a>-->
                <!--<a href=""> <i></i> <span>土地评估（全国范围执业））</span> </a>-->
                <!--<a href=""> <i></i> <span>资产评估（全国范围执业）</span> </a>-->

            <!--</div>-->
        <!--</li>-->
        <!--<li class="menu_lists">-->
            <!--<span class="jjki"><a href="">课程体系</a></span>-->
            <!--<p class="right">+</p>-->
            <!--<div class="wrap_menu_2">-->
                <!--<a href=""> <i></i> <span>行业新闻</span> </a>-->
                <!--<a href=""> <i></i> <span>公司动态</span> </a>-->
                <!--<a href=""> <i></i> <span>政策法规</span> </a>-->
            <!--</div>-->
        <!--</li>-->
        <!--<li class="menu_lists">-->
            <!--<span class="jjki"><a href="">课程阶段</a></span>-->
            <!--<p class="right">+</p>-->
            <!--<div class="wrap_menu_2">-->
                <!--<a href=""> <i></i> <span>精英团队</span> </a>-->
                <!--<a href=""> <i></i> <span>招聘计划</span> </a>-->
            <!--</div>-->
        <!--</li>-->

        <!--<li class="menu_lists">-->
            <!--<span class="jjki"><a href="">校区展示</a></span>-->
            <!--<p class="right">+</p>-->
            <!--<div class="wrap_menu_2">-->
                <!--<a href=""> <i></i> <span>总部联系方式</span> </a>-->
                <!--<a href=""> <i></i> <span>分部联系方式</span> </a>-->
            <!--</div>-->
        <!--</li>-->
        <!--<li class="menu_lists">-->
            <!--<span class="jjki"><a href="">视频专区</a></span>-->
            <!--<p class="right">+</p>-->
            <!--<div class="wrap_menu_2">-->
                <!--<a href=""> <i></i> <span>总部联系方式</span> </a>-->
                <!--<a href=""> <i></i> <span>分部联系方式</span> </a>-->
            <!--</div>-->
        <!--</li>-->
        <!--<li class="menu_lists">-->
            <!--<span class="jjki"><a href="">加盟悠悠兔</a></span>-->
            <!--<p class="right">+</p>-->
            <!--<div class="wrap_menu_2">-->
                <!--<a href=""> <i></i> <span>总部联系方式</span> </a>-->
                <!--<a href=""> <i></i> <span>分部联系方式</span> </a>-->
            <!--</div>-->
        <!--</li>-->
        <!--<li class="menu_lists">-->
            <!--<span class="jjki"><a href="">联系我们</a></span>-->
            <!--<p class="right">+</p>-->
            <!--<div class="wrap_menu_2">-->
                <!--<a href=""> <i></i> <span>总部联系方式</span> </a>-->
                <!--<a href=""> <i></i> <span>分部联系方式</span> </a>-->
            <!--</div>-->
        <!--</li>-->
    </ul>

</div>
<!--导航-->
<div class="black_cloth hidden-lg hidden-md"></div>



<script type="text/javascript">
    // 手机左边弹出菜单
    $(".NavBtn").click(function () {
        $(".black_cloth").show();
        $(".wrap_menu").animate({ "left": "0" }, 200);
        $("body").animate({ "left": "250px" }, 200);
        $("body").css("overflow", "hidden");

    })
    $(".black_cloth").click(function () {
        $(".black_cloth").hide();
        $(".wrap_menu").animate({ "left": "-250" }, 200);
        $("body").animate({ "left": "0" }, 200);
        $("body").css("overflow", "visible");

    })
    // 手机左边弹出菜单下拉
    $(".wrap_menu ul>li.menu_lists>span.jjki").click(function () {
        if ($(this).parent().find(".wrap_menu_2").css("display") == "block") {
            $(this).parent().find(".wrap_menu_2").slideUp();
            $(this).parent().find("p").html("+");
            return;
        }
        $(".wrap_menu_2").slideUp();
        $(".wrap_menu li p").html("+");
        $(this).parent().find("p").html("-");
        $(this).parent().find(".wrap_menu_2").slideDown();
    })
    //点击导航弹出左边菜单
    $(".navigation").click(function () {
        $(".black_cloth").show();
        $(".wrap_menu").animate({ "left": "0" }, 200);
        $("body").animate({ "left": "250px" }, 200);
        $("body").css("overflow", "hidden");
        $(".wrap_footer").animate({ "left": "250px" }, 200);
    })
    //点击叉叉关闭左边弹出菜单
    $(".menu_close").click(function () {
        $(".black_cloth").hide();
        $(".wrap_menu").animate({ "left": "-250" }, 200);
        $("body").animate({ "left": "0" }, 200);
        $("body").css("overflow", "visible");
        $(".wrap_footer").animate({ "left": "0" }, 200);
    })

    //点击分类关闭左边弹出菜单
    $(".jjki").click(function () {
        $(".black_cloth").hide();
        $(".wrap_menu").animate({ "left": "-250" }, 200);
        $("body").animate({ "left": "0" }, 200);
        $("body").css("overflow", "visible");
        $(".wrap_footer").animate({ "left": "0" }, 200);
    })
</script>
