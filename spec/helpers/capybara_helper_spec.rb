require 'rails_helper'

RSpec.describe CapybaraHelper, type: :helper do
 	context 'without a target'do
	 	it 'builds data-test attributes without targets' do
	 		expect(dt('hello')).to eq("//div[@data-test='hello']")
	 	end
	end

	context 'with a target'do
	 	it 'builds data-test attributes with targets' do
	 		expect(dt('hello','a')).to eq("//a[@data-test='hello']")
	 	end
	end

	context 'without leading forward slashes'do
	 	it 'builds data-test attributes without leading slashes' do
	 		expect(dt('hello','a', false)).to eq("a[@data-test='hello']") 
	 	end
	end
end
