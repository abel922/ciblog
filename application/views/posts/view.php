<h2><?php echo $post['title']; ?></h2>
<small class="post-date">Posted on: <?php echo $post['created_at']; ?></small></br>
<img style="margin: 0 auto;" class="img-responsive" src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image']; ?>"><br>
<div class="post-body">
  <?php echo $post['body']; ?>
</div>
<?php if($this->session->userdata('user_id') == $post['user_id']): ?>
<hr>
<a class="btn btn-primary pull-left" href="<?php echo base_url(); ?>posts/edit/<?php echo $post['slug']; ?>">Edit</a>
<?php echo form_open('/posts/delete/'.$post['id']); ?>
<input type="submit" class="btn btn-danger btn-ml" value="Delete">
<?php endif; ?>
</form>
<hr>
<h3>Comments</h3>
<?php if($comments) : ?>
  <?php foreach($comments as $comment) : ?>
    <div class="well">
        <h5><?php echo $comment['body']; ?> [by <strong><?php echo $comment['name']; ?></strong>]</h5>
    </div>
  <?php endforeach; ?>
<?php else: ?>
<div class="well">
<p>No Comments to Display</p>
</div>
<?php endif; ?>
<hr>
<h3>Add Comment</h3>
<?php echo validation_errors(); ?>
<?php echo form_open('comments/create/'.$post['id']); ?>
<div class="form-group">
  <label>Name</label>
  <input type="text" name="name" class="form-control">
</div>
<div class="form-group">
  <label>Email</label>
  <input type="text" name="email" class="form-control">
</div>
<div class="form-group">
  <label>Body</label>
  <textarea class="form-control" name="body"></textarea>
</div>
<input type="hidden" name="slug" value="<?php echo $post['slug']; ?>">
<button class="btn btn-primary" type="submit">Submit</button>
</form>
<br><br>
