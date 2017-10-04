<?php
/* @var $this BaogiaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Bao gia',
);

$this->menu=array(
	array('label'=>'Create Baogia', 'url'=>array('create')),
	array('label'=>'Manage Baogia', 'url'=>array('admin')),
);
?>

<h1> <?php if(!Yii::app()->user->isGuest) { echo '注文';} ?> </h1>
<div class
="view">
<div id="box-content1">
   <div id="tab-ctright" style="font-size: 20px;"> <?php if(Yii::app()->user->isGuest) { echo '注文';} ?> </div>
     <div id="bg-ct-right1">
		<div id="bg-ct-right" style="line-height:19px; font-family:Arial, Helvetica, sans-serif">
		<p style="text-align:justify" class="MsoNormal" ><span style="font-size:14.0pt"> 
		<?php if(Yii::app()->user->isGuest) { ?>
			<?php
			if($dataProvider) {
				foreach ($dataProvider as $value) {
					echo $value->content;
				}
			}else{
					echo ' アップデート中!';
				}
			?>
		 </p>
		 <?php //echo CHtml::link('>> Liên hệ ngay để biết thông tin chi tiết <<',array('site/contact'),array('color' => 'green')); ?>
		<?php 
		}else {
			if($dataProvider) {
				foreach ($dataProvider as $value) {
					echo $value->content;
				}
			}else{
					echo ' アップデート中!';
				}
			
		}
		 ?>
        </div>
    </div>
</div>
</div>