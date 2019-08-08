<?php defined('IN_IA') or exit('Access Denied');?>
<h2 class="indexNewH2"><a href="">眼综合案例</a></h2>
<div class="clearfix indexVListUl">

    <?php  if(is_array($eyeImg)) { foreach($eyeImg as $item) { ?>
    <div class="indexVan-tab"><a href="<?php  echo $item['link'];?>"><img src="<?php  echo $item['thumb'];?>"></a></div>
    <?php  } } ?>

</div>

<div class="height20px"></div>

