# name: valar-tools2-discourse-plugin
# about: Interconnecting the forum with the tools for Valar
# version: 0.0.1
# authors: Buenchico
# url: https://github.com/buenchico/valar-tools2-discourse-plugin

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
