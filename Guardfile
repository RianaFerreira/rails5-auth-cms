# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Uncomment and set this to only include directories you want to watch
# directories %w(app lib config test spec features) \
#  .select{|d| Dir.exists?(d) ? d : UI.warning("Directory #{d} does not exist")}

## Note: if you are using the `directories` clause above and you are not
## watching the project directory ('.'), then you will want to move
## the Guardfile to a watched dir and symlink it back, e.g.
#
#  $ mkdir config
#  $ mv Guardfile config/
#  $ ln -s config/Guardfile .
#
# and, you'll have to watch "config/Guardfile" instead of "Guardfile"

# Note: The cmd option is now required due to the increasing number of ways
#       rspec may be run, below are examples of the most common uses.
#  * bundler: 'bundle exec rspec'
#  * bundler binstubs: 'bin/rspec'
#  * spring: 'bin/rspec' (This will use spring if running and you have
#                          installed the spring binstubs per the docs)
#  * zeus: 'zeus rspec' (requires the server to be started separately)
#  * 'just' rspec: 'rspec'

# Clear the screen before every task
clearing :on

# This group allows to skip running RuboCop when RSpec failed.
group :red_green_refactor, halt_on_fail: true do
  guard :rspec, cmd: "NO_COVERAGE=true bin/rspec" do
    require "guard/rspec/dsl"
    dsl = Guard::RSpec::Dsl.new(self)

    # RSpec files
    rspec = dsl.rspec
    watch(rspec.spec_helper) { rspec.spec_dir }
    watch(rspec.spec_support) { rspec.spec_dir }
    watch(rspec.spec_files)

    # Ruby files
    ruby = dsl.ruby
    dsl.watch_spec_files_for(ruby.lib_files)

    # Rails files
    rails = dsl.rails(view_extensions: %w(erb haml slim))
    dsl.watch_spec_files_for(rails.app_files)
    dsl.watch_spec_files_for(rails.views)

    watch(rails.controllers) do |m|
      [
        rspec.spec.call("routing/#{m[1]}_routing"),
        rspec.spec.call("controllers/#{m[1]}_controller"),
        rspec.spec.call("acceptance/#{m[1]}")
      ]
    end

    # Rails config changes
    watch(rails.spec_helper)     { rspec.spec_dir }
    watch(rails.routes)          { "#{rspec.spec_dir}/routing" }
    watch(rails.app_controller)  { "#{rspec.spec_dir}/controllers" }

    # Capybara features specs
    watch(rails.view_dirs)     { |m| rspec.spec.call("features/#{m[1]}") }
    watch(rails.layouts)       { |m| rspec.spec.call("features/#{m[1]}") }
  end

  # guard :rubocop,
  #       all_on_start: false,
  #       # NOTE: Default CLI options in the `.rubocop` file.
  #       cli: ["--format", "fuubar"] do
  #   watch(/.+\.rb$/)
  #   watch(%r{(?:.+/)?\.rubocop\.yml$}) { |m| File.dirname(m[0]) }
  # end
  #
  # guard :reek,
  #       all_on_start: false do
  #   watch(/.+\.rb$/)
  #   watch(".reek")
  # end
  #
  # guard :scss_lint,
  #       all_on_start: false do
  #   watch(%r{^app/assets/stylesheets/.+.scss})
  # end
  #
  # # NOTE: An attempt was made to use the guard-rake gem to run this,
  # # but for whatever reason it resulted in errors, so guard-process is
  # # being used, even though it's a bit annoying you can't configure an
  # # `all_on_start: false` attribute.
  # guard :process,
  #       name: "JS linter",
  #       command: ["bin/rake", "eslint:run_all"] do
  #   watch(%r{^app/.+\.js$})
  # end
  #
  # guard :brakeman, quiet: true do
  #   watch(%r{^app/.+\.(erb|haml|rhtml|rb)$})
  #   watch(%r{^config/.+\.rb$})
  #   watch(%r{^lib/.+\.rb$})
  #   watch("Gemfile")
  # end
end
