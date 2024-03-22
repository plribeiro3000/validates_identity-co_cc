# frozen_string_literal: true

class ValidatesIdentity
  module CoCc
    class Validator
      VALIDATION_REGULAR_EXPRESSION = /\A\d{8,10}\z/i.freeze

      attr_reader :value

      def initialize(value)
        @value = value.to_s
      end

      def valid?
        return true if value.blank?
        return false if value.length == 9

        result.present?
      end

      def formatted
        value
      end

      private

      def result
        @result ||= VALIDATION_REGULAR_EXPRESSION.match(value)
      end
    end
  end
end
