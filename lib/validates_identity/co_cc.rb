# frozen_string_literal: true

require 'validates_identity'
require_relative 'co_cc/version'

class ValidatesIdentity
  module CoCc
    autoload :Validator, 'validates_identity/co_cc/validator'
  end
end

ValidatesIdentity.register_person_identity_type('CO_CC', ValidatesIdentity::CoCc::Validator)
ValidatesIdentity::ShouldaMatchers.register_person_allowed_values('CO_CC', %w[123456 1234567 12345678 123456789 1234567890])
ValidatesIdentity::ShouldaMatchers.register_person_disallowed_values('CO_CC', %w[12345 12345678901])
