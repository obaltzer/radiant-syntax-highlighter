# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class SyntaxHighlighterExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/syntax_highlighter"
  
  # define_routes do |map|
  #   map.connect 'admin/syntax_highlighter/:action', :controller => 'admin/syntax_highlighter'
  # end
  
  def activate
    # admin.tabs.add "Syntax Highlighter", "/admin/syntax_highlighter", :after => "Layouts", :visibility => [:all]
    Page.send :include, SyntaxHighlighterTags
  end
  
  def deactivate
    # admin.tabs.remove "Syntax Highlighter"
  end
  
end
