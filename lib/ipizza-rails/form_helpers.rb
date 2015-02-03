module Ipizza
  module Rails
    module FormHelpers
      def ipizza_payment_form_tag(payment, options = {}, &block)
        request = case options.delete(:service).to_sym
        when :lhv
          Ipizza::Provider::Lhv.new.payment_request(payment)
        when :swedbank
          Ipizza::Provider::Swedbank.new.payment_request(payment)
        when :seb
          Ipizza::Provider::Seb.new.payment_request(payment)
        when :sampo
          Ipizza::Provider::Sampo.new.payment_request(payment)
        when :nordea, :danske
          Ipizza::Provider::Nordea.new.payment_request(payment)
        when :krediidipank
          Ipizza::Provider::Krediidipank.new.payment_request(payment)
        end

        form_tag(request.service_url, options) do
          request.request_params.each do |name, value|
            concat(hidden_field_tag(name, value))
          end

          yield if block_given?
        end if request
      end
    end
  end
end