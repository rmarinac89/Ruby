module StringHelper


	def parameterize
		puts @name.downcase.gsub('', '-') # any spaces will be replaced with a hyphen.
	end

end

class User

	include StringHelper #include puts this inside my class as an instance methods - called on instance
	extend ShareCode
	attr_accessor :name

	def initialize(name)
		@name = name
	end

end

class BlogPost

	include StringHelper
	attr_accessor :title

	def initialize(title)
		@title = title
	end

end

user = User.new('James Bond')
post = BlogPost.new ('Bond always gets the girls!')

user.parameterize
post.parameterize

# URL safing or parameterizing your string is turning you blog post title
# or twitter username into the url path to your page.
