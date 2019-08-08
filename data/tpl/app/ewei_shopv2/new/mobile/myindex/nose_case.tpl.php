<?php defined('IN_IA') or exit('Access Denied');?><!--鼻综合案例开始-->

<h2 class="indexNewH2"><a href="">鼻综合案例</a></h2>

<div class="clearfix indexVListUl">

    <?php  if(is_array($noseImg)) { foreach($noseImg as $item) { ?>
    <div class="indexVan-tab"><a href="<?php  echo $item['link'];?>"><img src="<?php  echo $item['thumb'];?>"></a></div>
    <?php  } } ?>

</div>


<div class="height20px"></div>
