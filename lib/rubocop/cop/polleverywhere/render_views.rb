# frozen_string_literal: true

module RuboCop
  module Cop
    module PollEverywhere
      class RenderViews < Cop
        MSG = 'Do not use `render_views` in controller tests because it is an order of magnitude slower. If view rendering needs to be tested, write a different type of test.'.freeze

        def_node_matcher :render_views?, <<-PATTERN
          (send nil? :render_views)
        PATTERN

        def on_send(node)
          return unless render_views?(node)

          add_offense(node, location: :selector)
        end
      end
    end
  end
end
