# frozen_string_literal: true

module RuboCop
  module Cop
    module PollEverywhere
      class Constantize < Cop
        MSG = 'The use of `constantize` is a potential security risk.'.freeze

        def_node_matcher :constantize?, <<-PATTERN
          (send (...) :constantize)
        PATTERN

        def on_send(node)
          return unless constantize?(node)

          add_offense(node, location: :selector)
        end
      end
    end
  end
end
