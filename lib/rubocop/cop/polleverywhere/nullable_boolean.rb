# frozen_string_literal: true

module RuboCop
  module Cop
    module PollEverywhere
      class NullableBoolean < Cop
        MSG = "Boolean database columns cannot be nullable. (https://playbook.polleverywhere.com/conventions/ruby/#migrations)".freeze

        def on_send(node)
          if adding_boolean?(node) && nullable?(node)
            add_offense(node, :expression, MSG)
          end
        end

        def relevant_file?(file)
          super && file =~ %r(/db/migrate/.+\.rb\z)
        end

        private

        def adding_boolean?(node)
          code_match = node.method_name == :boolean ||
            node.source =~ /(add|change)_column.+boolean/mi
          code_match && !in_excluded_method?(node)
        end

        def in_excluded_method?(node)
          node.each_ancestor(:def).any? do |parent_node|
            method_name, _args, _body = *parent_node
            method_name == :down
          end
        end

        def nullable?(node)
          node.source !~ /(null:\s*false)|(:null\s*=>\s*false)|(NOT\s+NULL)/i
        end
      end
    end
  end
end
