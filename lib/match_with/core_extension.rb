require 'regularity'
module MatchWith
  module CoreExtension
      class MatchWith

        def initialize(string)
            @str = ''
            @string = string
        end

        def method_missing(meth, *args, &block)
          re = regex.respond_to?(meth) ? regex.send(meth, *args, &block) : regex
          @str << re.regex.source
          self
        end

        def regex
           Regularity.new
        end

        def result
          @string[/#{@str}/]
        end
      end


  end
end