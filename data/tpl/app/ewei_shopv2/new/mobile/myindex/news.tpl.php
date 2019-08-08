<?php defined('IN_IA') or exit('Access Denied');?><!--行业资讯开始-->
<h2 class="indexNewH2"><a href="">行业资讯</a></h2>
<div class="clearfix indexNewsUl">

    <?php  if(is_array($newsList)) { foreach($newsList as $item) { ?>
    <div class="indexNewsUlList clearfix">
        <h2 class="indexNewsUlListH2"><a href="<?php  echo $item['link'];?>"><?php  echo $item['article_title'];?></a></h2>
        <div class="indexNewsUlListDiv">
            <a href="<?php  echo $item['link'];?>">
                <div class="indexLedft"><?php  echo $item['index'];?></div>
                <div class="indexLRighty">
                    <?php  echo $item['resp_desc'];?>
                </div>
            </a>
        </div>
    </div>
    <?php  } } ?>

</div>

<div class="height20px"></div>

