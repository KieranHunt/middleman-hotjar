# frozen_string_literal: true

require 'simplecov'
SimpleCov.start

ENV['TEST'] = 'true'

PROJECT_ROOT_PATH = File.dirname(File.dirname(File.dirname(__FILE__)))
require 'middleman-core'
require 'middleman-core/step_definitions'
require File.join(PROJECT_ROOT_PATH, 'lib', 'middleman-hotjar')
