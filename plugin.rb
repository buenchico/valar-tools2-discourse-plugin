# plugins/your-plugin-name/plugin.rb

# add the required dependencies
gem 'net-http-persistent'

after_initialize do
  require_dependency 'post'

  on(:post_created) do |post|
    process_post(post) if post.raw.include?("$army.red")
  end

  on(:post_edited) do |post, _, _|
    process_post(post) if post.raw.include?("$army.red")
  end

  def process_post(post)
    puts "test"
  end
end
