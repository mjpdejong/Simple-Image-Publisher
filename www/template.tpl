<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<!--<?= $_SERVER['HTTP_USER_AGENT'] ?>-->

	<head>

		<meta charset="UTF-8" />
		
		<meta name="viewport" content="initial-scale=1.0">

		<title>Simple Photo Viewer</title>

		<link rel="stylesheet" href="/styles/ss1.css"/>

		<link rel="stylesheet" href="/plugins/font-awesome-4.0.3/css/font-awesome.min.css"/>

		<!--[if lt IE 9]>
 			<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

		<script src="/scripts/js1.js"></script>
	
	</head>

	<body>

		<header>

			<i class="fa fa-picture-o" id="header_icon"></i>

			<h1>Simple Photo Viewer</h1>
			<h2>This is a Demo of SPV</h2>

			<nav>
				<?php if (page() > 1): ?>

				<a href="/<?=page()-1;?>"><i class="fa fa-arrow-left"></i></a>
				<?php endif; ?>
				<?php foreach (pic_array() as $key => $value): ?>
				<?php if ($key+1 === page()): ?>
						
				<a id="cp" href="/<?=$key+1;?>"><?=$key+1;?></a>
				<?php else: ?>
	
				<a href="/<?=$key+1;?>"><?=$key+1;?></a>
				<?php endif; ?>
				<?php endforeach; ?>
				<?php if (page() !== count(pic_array())): ?>
	
				<a href="/<?=page()+1;?>"><i class="fa fa-arrow-right"></i></a>
				<?php endif; ?>

			</nav>

		</header>	
		
		<main>
			<?php foreach (page_pic_array(page()) as $date => $file): ?>

			<a href="images/<?=$file?>"><img src="thumbs/<?=$file?>"/></a>
				
			<p>This photograph was added on: <?=$date;?> <a href="images/<?=$file?>">download</a></p>
			<?php endforeach; ?>
			
		</main>
				
		<footer>

			<nav>
				<?php if (page() > 1): ?>

				<a href="/<?=page()-1;?>"><i class="fa fa-arrow-left"></i></a>
				<?php endif; ?>
				<?php foreach (pic_array() as $key => $value): ?>
				<?php if ($key+1 === page()): ?>
						
				<a id="cp" href="/<?=$key+1;?>"><?=$key+1;?></a>
				<?php else: ?>
	
				<a href="/<?=$key+1;?>"><?=$key+1;?></a>
				<?php endif; ?>
				<?php endforeach; ?>
				<?php if (page() !== count(pic_array())): ?>
	
				<a href="/<?=page()+1;?>"><i class="fa fa-arrow-right"></i></a>
				<?php endif; ?>

			</nav>
				
			<footer>

				<ul>
					<li>Made by Marco de Jong | <a href="www.mjpdejong.com">www.mjpdejong.com</a> | <a href="https://github.com/mjpdejong/Simple-Image-Publisher">Simple Image Publisher</a></li>
					<li>Icons provided by <a href="http://fortawesome.github.io/Font-Awesome/">FontAwsome</a> | Demo Photo's taken from <a href="www.unsplash.com">Unsplash.com</a></li>
				</ul>

			</footer>

		</footer>

	</body>

</html>
