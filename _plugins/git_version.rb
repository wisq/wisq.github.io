module Wisq
  class GitVersion < Liquid::Tag
    def render(context)
      `git rev-parse HEAD`
    end
  end
end

Liquid::Template.register_tag('git_version', Wisq::GitVersion)
