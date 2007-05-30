require File.dirname(__FILE__) + '/../test_helper'

class SyntaxHighlighterExtensionTest < Test::Unit::TestCase
  
  # Replace this with your real tests.
  def test_this_extension
    flunk
  end
  
  def test_initialization
    assert_equal File.join(File.expand_path(RADIANT_ROOT), 'vendor', 'extensions', 'syntax_highlighter'), SyntaxHighlighterExtension.root
    assert_equal 'Syntax Highlighter', SyntaxHighlighterExtension.extension_name
  end
  
end
