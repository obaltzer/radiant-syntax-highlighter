namespace :radiant do
  namespace :extensions do
    namespace :syntax_highlighter do
      
      desc "Runs the migration of the Syntax Highlighter extension"
      task :migrate => :environment do
        require 'radiant/extension_migrator'
        if ENV["VERSION"]
          SyntaxHighlighterExtension.migrator.migrate(ENV["VERSION"].to_i)
        else
          SyntaxHighlighterExtension.migrator.migrate
        end
      end
    
    end
  end
end