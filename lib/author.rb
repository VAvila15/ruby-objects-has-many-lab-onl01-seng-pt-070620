class Author
  
  attr_accessor :name, :posts
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def post(post)
    post.author = self
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end
  
  def self.post_count
<<<<<<< HEAD
    Post.all.count
=======
    @@post_count
>>>>>>> 7fb9a5f5ab127afbe33574493543e82aaf8f1183
  end

end