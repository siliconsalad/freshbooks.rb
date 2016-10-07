module FreshBooks
  class Callback < FreshBooks::Base
    define_schema do |s|
      s.fixnum :callback_id
      s.string :event, :uri, :verifier
      s.boolean :verified
    end

    actions :list, :delete, :create, :verify, :resendToken

    # Doc here : https://www.freshbooks.com/developers/docs/callbacks
  end
end
