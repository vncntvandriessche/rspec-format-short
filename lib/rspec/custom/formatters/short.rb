require "rspec/core"

RSpec::Support.require_rspec_core "formatters/base_text_formatter"

module RSpec
  module Custom
    module Formatters
      class ShortFormatter
        RSpec::Core::Formatters.register(
          self,
          :example_passed,
          :example_failed,
          :stop,
          :close
        )

        def initialize(output)
          @output = output
          @passed = []
          @failed = []
          @rules = []
        end

        def example_passed(passed)
          @passed << passed
        end

        def example_failed(failure)
          @failed << failure
        end

        def stop(_notification)
          @rules = ["All checks were successfull.\n"]

          if @failed.count >= 1
            @rules = ["One or more checks failed.\n"]
            @rules << "Failed:"

            @rules += @failed.map { |f| "- #{f.description}" }
          end

          if @passed.count >= 1
            @rules << "Success:"

            @rules += @passed.map { |p| "- #{p.example.full_description}" }
          end

          @rules << ""
        end

        def close(_notification)
          @output.write @rules.join("\n")
          @output.close if IO.eql?(@output) && @output != $stdout
        end
      end
    end
  end
end
