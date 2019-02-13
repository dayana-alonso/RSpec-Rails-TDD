	Shoulda::Matchers.configure do |config|
		config.intergrate do |with|
			with.test_framework :rspec
			with.library :rails
		end
	end