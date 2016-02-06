<div class="product">
	<div class="container">
		<div class="row">
			<div class="col-sm-5">
				<div id="links">
					<div id="product-image-carousel" class="carousel slide" data-ride="carousel">

						<div class="carousel-inner" role="listbox">
							<% loop Product.OrderedImages %>
								<div class="item">
									<a href="$Filename" data-gallery>
										$SetSize(500, 500)
									</a>
								</div>
							<% end_loop %>
						</div>

						<!-- Controls -->
						 <a class="left carousel-control" href="#product-image-carousel" role="button" data-slide="prev">
						   <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						   <span class="sr-only">Previous</span>
						 </a>
						 <a class="right carousel-control" href="#product-image-carousel" role="button" data-slide="next">
						   <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						   <span class="sr-only">Next</span>
						 </a>

						<ol class="carousel-indicators">
							<% loop Product.OrderedImages %>
								<li data-target="#product-image-carousel" data-slide-to="$Pos(0)" class="indicator-pos" style="background-image: url('$Filename');"></li>
							<% end_loop %>
						</ol>
					</div>
					<p>(Click image to enlarge)</p>
				</div>
			</div>
			<div class="col-sm-7">
				<div class="product-meta">
					<h1>$Product.Title</h1>
					<h3 class="product-price-js">$Product.Price.Nice</h3>

					<div class="add-to-cart">
						$ProductForm(1)
					</div>
				</div>

				<div class="product-description">
					$Product.Content
				</div>
			</div>
		</div>
	</div>
</div>

<% include GalleryModal %>


<script type="text/javascript">
	$(document).ready(function() {
		$('#product-image-carousel').find('.item').first().addClass('active');
		$('#product-image-carousel').find('.indicator-pos').first().addClass('active');
	});
</script>