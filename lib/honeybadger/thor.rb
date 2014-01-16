require 'honeybadger/thor/version'
require 'honeybadger'
require 'thor'

module Honeybadger
  module Thor
    def self.included(base)
      base.class_eval do
        no_commands do
          alias_method :invoke_command_without_honeybadger, :invoke_command
          alias_method :invoke_command, :invoke_command_with_honeybadger
        end
      end
    end

    def invoke_command_with_honeybadger(*args)
      invoke_command_without_honeybadger(*args)
    rescue Exception => e
      Honeybadger.notify_or_ignore(e)
      raise
    end
  end
end
Thor.send(:include, Honeybadger::Thor)
