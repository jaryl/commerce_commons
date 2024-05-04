module CommerceCommons
  class Engine < ::Rails::Engine
    isolate_namespace CommerceCommons

    config.generators do |g|
      g.test_framework :rspec, fixture: false

      g.assets false
      g.helper false
      g.stylesheets false

      g.helper_specs false
      g.request_specs false
      g.controller_specs true
    end
  end
end
