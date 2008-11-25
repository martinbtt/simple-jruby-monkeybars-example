class SimpleView < ApplicationView
  set_java_class 'simple.SimpleFrame'
  map :view => "name.text", :model => :name
  map :view => "message.text", :model => :message

end
