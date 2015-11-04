# Default url mappings are:
# 
# * a controller called Main is mapped on the root of the site: /
# * a controller called Something is mapped on: /something
# 
# If you want to override this, add a line like this inside the class:
#
#  map '/otherurl'
#
# this will force the controller to be mounted on: /otherurl.
class MainController < Controller

  # the index action is called automatically when no other action is specified
  def index
    @title = '<span class="blue">G</span> <span class="red">O</span> <span class="yellow">O</span> <span class="blue">G</span> <span class="green">O</span> <span class="red">L</span>'
  end

  # the string returned at the end of the function is used as the html body
  # if there is no template for the action. if there is a template, the string
  # is silently ignored
  def notemplate
    @title = '<span class="blue">G</span> <span class="red">O</span> <span class="yellow">O</span> <span class="blue">G</span> <span class="green">O</span> <span class="red">L</span>'
    
    return 'There is no \'notemplate.xhtml\' associated with this action.'
  end

end
