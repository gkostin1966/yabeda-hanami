# frozen_string_literal: true

require "dry/events"

module Yabeda
  module Hanami
    # ActiveSupport Event with added logic for Yabeda tags formatting
    class Event < Dry::Events::Event
      def labels
        @labels ||= begin
          labels = {
            controller: controller,
            action: action,
            status: status,
            format: format,
            method: method
          }
          labels.merge(payload.slice(*Yabeda.default_tags.keys - labels.keys))
        end
      end

      def duration
        ms2s payload[:time]
      end

      def view_runtime
        # ms2s payload[:view_runtime]
        0
      end

      def db_runtime
        # ms2s payload[:db_runtime]
        0
      end

      private

      def controller
        case Yabeda::Hanami.config.controller_name_case
        when :camel
          # payload[:controller]
          "CamelCase"
        else
          # payload[:params]["controller"]
          "nonCamelCase"
        end
      end

      def action
        # payload[:action]
        "action"
      end

      def status
        # if payload[:status].nil? && payload[:exception].present?
        #   Dry::Notifications::ExceptionWrapper.status_code_for_exception(payload[:exception].first)
        # else
          payload[:status]
        # end
      end

      def format
        payload["rack.url_scheme"]
      end

      def method
        payload["REQUEST_METHOD"].to_s.downcase
      end

      def ms2s(milliseconds)
        (milliseconds.to_f / 1000).round(3)
      end
    end
  end
end
