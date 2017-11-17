<!-- ======== @Region: #highlighted ======== -->
		<div id="highlighted">
			<div class="container">
				<div class="header">
					<h2 class="page-title">
						<span>News in section: SECTION TITLE</span>
					</h2>
				</div>
			</div>
		</div>
		<div id="content" class="demos">
			<div class="container">
				<div class="row">
					<!--Blog Roll Content-->
					<div class="col-md-8 blog-list">
						<!-- Blog post -->
						
						<?php for($i = 1; $i <= 10; $i ++) {?>
						<div class="media row">
							<div class="col-sm-3">
								<a class="media-photo" href="#">
									<img src="/skins/tema/img/portfolio/enkel-home-blue.png" alt="Title<?php echo $i;?>" class="media-object img-polaroid" />
								</a>
							</div>
							<div class="col-sm-9">
								<div class="media-body">
									<!-- Meta details -->
									<ul class="list-inline meta text-muted">
										<li><i class="glyphicon glyphicon-calendar"></i> <span class="visible-md-inline visible-lg-inline">Created:</span> <?php echo date('Y-m-d H:i:s', time() - $i);?></li>
										<li>
											<i class="glyphicon glyphicon-tags"></i> <span class="visible-md-inline visible-lg-inline">Section:</span> 
											<a href="#">Section <?php echo $i;?></a>
										</li>
									</ul>
									<h4 class="title media-heading">
										<a href="#">Title <?php echo $i;?></a>
									</h4>
									<p>Description <?php echo $i;?></p>
									<ul class="list-inline links">
										<li>
											<a href="#" class="btn btn-default btn-xs">
												<i class="glyphicon glyphicon-circle-arrow-right"></i>
												Read more
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<?php }?>
						
						
						<div class="text-center">
							<ul class="pagination pagination-centered">
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
							</ul>
						</div>
					</div>
					<!--Sidebar-->
					<div class="col-md-4 sidebar sidebar-right">
						<div class="inner">
							<div class="block">
								<span class="btn btn-block btn-info"><i class="fa fa-download"></i> Download Our Press Kit</span>
								<span class="btn btn-block btn-success"><i class="fa fa-envelope-o"></i> Get In Touch</span>
								<span class="btn btn-block btn-warning"><i class="fa fa-rss"></i> Subscribe via RSS feed</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>