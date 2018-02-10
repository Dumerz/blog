module ApplicationHelper

	# test if link is the current path
	# return 'active'
	def current_path?(test_path)
		return 'class = active' if request.path == test_path
		''
	end

end
