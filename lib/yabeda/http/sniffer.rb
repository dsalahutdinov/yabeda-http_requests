# frozen_string_literal: true

module Yabeda
  module Http
    # Middleware for sniffer gem
    class Sniffer
      def call(data_item)
        Yabeda.http_requests_total.increment(
          host: data_item.request.host,
          port: data_item.request.port,
          method: data_item.request.method,
          query: data_item.request.query
        )
      end
    end
  end
end
