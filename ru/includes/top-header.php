<?php 
//session_start();

?>

<div class="top-bar animate-dropdown">
	<div class="container">
		<div class="header-top-inner">
			<div class="cnt-account">
				<ul class="list-unstyled">

<?php if(strlen($_SESSION['login']))
    {   ?>
				<li><a href="#"><i class="icon fa fa-user"></i>Добро пожаловать  <?php echo htmlentities($_SESSION['username']);?></a></li>
				<?php echo '
				    <li><a href="my-account.php"><i class="icon fa fa-user"></i>Мой Аккаунт</a></li>
					<li><a href="my-wishlist.php"><i class="icon fa fa-heart"></i>Избранное</a></li>
					<li><a href="my-cart.php"><i class="icon fa fa-shopping-cart"></i>Моя Корзина</a></li>
					
				
				'; }?>


					<?php if(strlen($_SESSION['login'])==0)
    {   ?>
        <li><a href="../index.php"><i class="icon fa fa-globe-in"></i>EN</a></li>
<li><a href="login.php"><i class="icon fa fa-sign-in"></i>Войти</a></li>
<?php }
else{ ?>
				<li><a href="../index.php"><i class="icon fa fa-globe-in"></i>EN</a></li>
				<li><a href="logout.php"><i class="icon fa fa-sign-out"></i>Выйти</a></li>
				<?php } ?>	
				</ul>
			</div><!-- /.cnt-account -->

<div class="cnt-block">
				<ul class="list-unstyled list-inline">
					<li class="dropdown dropdown-small">
                        <a href="track-orders.php" class="dropdown-toggle" ><span class="key">Отследить Заказ </span></b></a>
						
					</li>

				
				</ul>
			</div>
			
			<div class="clearfix"></div>
		</div><!-- /.header-top-inner -->
	</div><!-- /.container -->
</div><!-- /.header-top -->