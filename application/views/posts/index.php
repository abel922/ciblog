<h2><?= $title ?></h2></br>
<?php foreach($posts as $post): ?>
  <h3><?php echo $post['title']; ?></h3><strong><small>[<?php echo $post['name']?>]</small></strong></br></br>
  <div class="row">
    <div class="col-md-3">
			<img class="img-responsive" src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>">
		</div>
    <div class="col-md-9">
      <small class="post-date"><strong>Posted on:</strong> <?php echo $post['created_at']; ?></small></br>
      <?php echo word_limiter($post['body'], 55); ?>
      <br><br>
      <p><a class="btn btn-primary" href="<?php echo site_url('/posts/'.$post['slug']); ?>">
      Read more</a></p>
    </div>
  </div>
</br>
<?php endforeach; ?>
<div class="pagination-links">
<?php echo $this->pagination->create_links(); ?>  
</div>
