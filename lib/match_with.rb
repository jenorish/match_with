require "match_with/version"
require "match_with/core_extension"

class String
  def match_with
    MatchWith::CoreExtension::MatchWith.new(self)
  end
end


