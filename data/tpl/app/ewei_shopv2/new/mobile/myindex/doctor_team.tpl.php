<?php defined('IN_IA') or exit('Access Denied');?><!--医生团队开始-->

<h2 class="indexNewH2"><a href="">医生团队</a></h2>
<div class="clearfix indexVListUl">

    <?php  if(is_array($cubes)) { foreach($cubes as $cube) { ?>
    <div class="indexVan-tab"><a href="<?php  echo $cube['url'];?>"><img src="<?php  echo $cube['img'];?>"></a></div>
    <?php  } } ?>

</div>
<div class="height20px"></div>
