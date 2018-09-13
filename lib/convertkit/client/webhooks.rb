module Convertkit
  class Client
    module Webhooks
      def create_webhook(target_url, event)
        response = connection.post("automations/hooks") do |request|
          request.params["target_url"] = target_url
          request.params["event"] = event
        end
        response.body
      end

      def destroy_webhook(rule_id)
        response = connection.delete("automations/hooks/#{rule_id}")
        response.body
      end
    end
  end
end
