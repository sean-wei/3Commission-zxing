<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('_header', TEMPLATE_INCLUDEPATH)) : (include template('_header', TEMPLATE_INCLUDEPATH));?>
<script>
    document.documentElement.style.fontSize =document.documentElement.clientWidth/750*40 +"px";
</script>


<div class="layout">
    <div class="classify-container">
        <div class="clearfix posfixed" style="position: fixed;">
            <div class="menu_icon clear posfixw" style="height: 60px;padding-right: 5px;">
                <div class="Inn01-erSiteTop ">
                    <a href="javascript:window.history.back(-1);" class="mxjhui"><i class="icon01"></i></a>
                </div>
                <div class="tiaotlNav02">

                    <form method="post" action="<?php  echo mobileUrl('goods')?>">
                        <div class="search-main-box">

                            <div class="van-fieldody">
                                <input type="search" placeholder="请输入你想要查询的内容"
                                    placeholder-class="text-size-26 text-color-gray" focus="true" name="keywords" class="van-fieldcon-trol">
                            </div>
                            <a href="" class="classify-search-icon"><img src="<?php  echo EWEI_SHOPV2_LOCAL?>static/new/serach.png" style="height: 20px;vertical-align: middle;"></a>
                        </div>
                    </form>

                </div>

            </div>
        </div>

        <div class="clearfix catageryBody">

            <!--左侧分类-->
            <div class="catageryBodyleft van-pull-refresh">
                <div class="van-pullhead"></div>
                <div class="van-pull-refresh__track" style="transition: 0ms; transform: translate3d(0px, 0px, 0px);">
                    <div class="van-list">

                        <?php  if(is_array($category['parent']['0'])) { foreach($category['parent']['0'] as $value) { ?>
                            <div class="van-cell <?php  if($pcate==$value['id']) { ?>current <?php  } ?>" onclick="clickCate(this)">
                                <a href="<?php  echo mobileUrl('shop/category')?>&cate=<?php  echo $value['id'];?>">
                                    <span class="classify-text "><?php  echo $value['name'];?></span></a>
                            </div>
                        <?php  } } ?>

                    </div>
                </div>
            </div>

            <!--右侧商品-->
            <div class="catageryBodyRight van-pull-refresh">
                <div class="van-pullhead"></div>
                <div class="van-pull-refresh__track" style="transition: 300ms; transform: translate3d(0px, 0px, 0px);">
                    <div class="van-list clearfix" style="margin:0px 4px;">

                        <div class="service-box">
                            <div class="service-item-box clearfix">

                                <?php  if(is_array($goosList)) { foreach($goosList as $item) { ?>
                                <div class="service-item" style="width:49%">
                                    <a href="<?php  echo mobileUrl('goods/detail')?>&id=<?php  echo $item['id'];?>">
                                        <div class="service-image-box"><img src="<?php  echo $item['thumb'];?>" class="service-image"></div>
                                        <span class="service-text"><?php  echo $item['title'];?></span>
                                        <p class="service-itemPrices">￥<?php  echo $item['marketprice'];?></p>
                                    </a>
                                </div>
                                <?php  } } ?>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <script id='tpl_shop_category_list' type='text/html'>
    <%if recommend == 1%>
    <div class="fui-icon-group selecter">
        <?php  if(!p('offic')) { ?>
        <a class="fui-icon-col external" href="<?php  echo mobileUrl('goods')?>">
            <div class="icon <?php  if(empty($set['style'])) { ?>radius<?php  } ?>"><i class="icon icon-app" ></i></div>
            <div class="text">所有商品</div>
        </a>
        <?php  } ?>
        <?php  if($category_set['level']<=2) { ?>
            <%each recommend_children as child%>
                <a class="fui-icon-col external" href="<?php  echo mobileUrl('goods')?>&cate=<%child.id%>">
                    <div class="icon <?php  if(empty($set['style'])) { ?>radius<?php  } ?>"><img src="<%child.thumb%>" onerror="this.src='<?php echo EWEI_SHOPV2_STATIC;?>images/nopic100.png'; this.title='图片未找到.'"></div>
                    <div class="text"><%child.name%></div>
                </a>
            <%/each%>

        <?php  } else { ?>

            <%each recommend_children as child%>
                <a class="fui-icon-col show" data-children="<%child.id%>" data-pid="recommend" data-src="<%child.advimg%>" data-href="<%child.advurl%>" href="javascript:">
                    <div class="icon <?php  if(empty($set['style'])) { ?>radius<?php  } ?>">
                        <img src="<%child.thumb%>" onerror="this.src='<?php echo EWEI_SHOPV2_STATIC;?>images/nopic100.png'; this.title='图片未找到.'">
                    </div>
                    <div class="text"><%child.name%></div>
                </a>
            <%/each%>
        <?php  } ?>

        <%each recommend_grandchildren as grandchild%>
        <a class="fui-icon-col external" href="<?php  echo mobileUrl('goods')?>&cate=<%grandchild.id%>">
            <div class="icon <?php  if(empty($set['style'])) { ?>radius<?php  } ?>"><img src="<%grandchild.thumb%>" onerror="this.src='<?php echo EWEI_SHOPV2_STATIC;?>images/nopic100.png'; this.title='图片未找到.'"></div>
            <div class="text"><%grandchild.name%></div>
        </a>
        <%/each%>
    </div>
    <%else%>

    <?php  if($category_set['level']==1) { ?>
    <a class="fui-title">所有分类</a>
    <div class="fui-icon-group selecter">
        <a class="fui-icon-col external" href="<?php  echo mobileUrl('goods')?>">
            <div class="icon <?php  if(empty($set['style'])) { ?>radius<?php  } ?>"><i class="icon icon-app"></i></div>
            <div class="text">所有商品</div>
        </a>
        <%each parent[0] as cate%>
        <a class="fui-icon-col external" href="<?php  echo mobileUrl('goods')?>&cate=<%cate.id%>">
            <div class="icon <?php  if(empty($set['style'])) { ?>radius<?php  } ?>"><img src="<%cate.advimg%>" onerror="this.src='<?php echo EWEI_SHOPV2_STATIC;?>images/nopic100.png'; this.title='图片未找到.'"></div>
            <div class="text"><%cate.name%></div>
        </a>
        <%/each%>
    </div>

    <?php  } else if($category_set['level']==2 || empty($category_set['level']) ) { ?>
    <div class="fui-icon-group selecter">
        <%each children as child%>
        <a class="fui-icon-col external" href="<?php  echo mobileUrl('goods')?>&cate=<%child.id%>">
            <div class="icon <?php  if(empty($set['style'])) { ?>radius<?php  } ?>"><img src="<%child.thumb%>" onerror="this.src='<?php echo EWEI_SHOPV2_STATIC;?>images/nopic100.png'; this.title='图片未找到.'"></div>
            <div class="text"><%child.name%></div>
        </a>
        <%/each%>
    </div>

    <?php  } else { ?>
    <?php  if($category_set['show']!=1) { ?>
    <%each children as child%>
    <a class="fui-title external" href="<?php  echo mobileUrl('goods')?>&cate=<%child.id%>"><%child.name%></a>
    <div class="fui-icon-group selecter">
        <%each grandchildren[child.id] as grandchild%>
        <a class="fui-icon-col external" href="<?php  echo mobileUrl('goods')?>&cate=<%grandchild.id%>">
            <div class="icon <?php  if(empty($set['style'])) { ?>radius<?php  } ?>"><img src="<%grandchild.thumb%>" onerror="this.src='<?php echo EWEI_SHOPV2_STATIC;?>images/nopic100.png'; this.title='图片未找到.'"></div>
            <div class="text"><%grandchild.name%></div>
        </a>
        <%/each%>
    </div>
    <%/each%>
    <?php  } else { ?>
    <div class="fui-icon-group selecter">
    <%each children as child%>
    <a class="fui-icon-col show" data-children="<%child.id%>" data-pid="<%child.parentid%>"  data-src="<%child.advimg%>" data-href="<%child.advurl%>" href="javascript:">
        <div class="icon <?php  if(empty($set['style'])) { ?>radius<?php  } ?>"><img src="<%child.thumb%>" onerror="this.src='<?php echo EWEI_SHOPV2_STATIC;?>images/nopic100.png'; this.title='图片未找到.'"></div>
        <div class="text"><%child.name%></div>
    </a>
    <%/each%>
    </div>
    <?php  } ?>
    <?php  } ?>
    <%/if%>
</script>

<script id='tpl_shop_category_show_list' type='text/html'>
    <div class="fui-icon-group selecter">
        <a class="fui-icon-col prev" data-prev="<%pid%>">
            <div class="icon <?php  if(empty($set['style'])) { ?>radius<?php  } ?>"><i class="icon icon-toleft"></i></div>
            <div class="text">返回上一级</div>
        </a>
        <%each children as child%>
        <a class="fui-icon-col external" href="<?php  echo mobileUrl('goods')?>&cate=<%child.id%>">
            <div class="icon <?php  if(empty($set['style'])) { ?>radius<?php  } ?>"><img src="<%child.thumb%>" onerror="this.src='<?php echo EWEI_SHOPV2_STATIC;?>images/nopic100.png'; this.title='图片未找到.'"></div>
            <div class="text"><%child.name%></div>
        </a>
        <%/each%>
    </div>
</script>
<script language='javascript'>
    require(['biz/shop/category'], function (modal) {
        modal.init(<?php  echo json_encode($category)?>,<?php  echo json_encode($category_set)?>);
    });
</script>
<?php  $this->footerMenus()?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('_footer', TEMPLATE_INCLUDEPATH)) : (include template('_footer', TEMPLATE_INCLUDEPATH));?>