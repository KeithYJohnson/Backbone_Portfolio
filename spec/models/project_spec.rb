require 'spec_helper'

describe Project do 

	describe 'nested attributes ' do
		before do
			json = {
				"skills_attributes" => [
					{ "name" => "Ruby"},
					{ "name" => "AJAX"},
					{ "name" => "Backbone"}
				]
			} 
			@project = Project.new(json)
		end

		it "should have filled in all the skillls" do
			@project.skills.length.should eq(3)
			@project.skills.first.name.should eq("Ruby")
		end

		# it "should give me a hash as_json" do
		# 	@project.as_json_class_should eq(SerializedHash)
		# end

		# it "should "  do
			
		# end
	end
end