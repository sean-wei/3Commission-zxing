<?php defined('IN_IA') or exit('Access Denied');?><!--热门项目开始-->

<h2 class="indexNewH2"><a href="">热门项目</a></h2>
<div class="indexNavListUl clearfix">


    <?php  if(is_array($navs)) { foreach($navs as $nav) { ?>
    <div class="indexNavList"><a href="<?php  echo $nav['url'];?>"><?php  echo $nav['navname'];?></a></div>
    <?php  } } ?>

</div>
<div class="height20px"></div>
