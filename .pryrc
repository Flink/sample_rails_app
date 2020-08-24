# Prompt with ruby version
Pry.config.prompt =  Pry::Prompt.new(
  "main",
  "Our custom prompt",
  [
    proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} > " },
    proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} * " }
  ]
)

Pry.commands.alias_command 'c', 'continue'
Pry.commands.alias_command 's', 'step'
Pry.commands.alias_command 'n', 'next'
Pry.color = true

begin
  require 'awesome_print'
  AwesomePrint.pry!
rescue LoadError => e
  puts 'no awesome_print'
end
