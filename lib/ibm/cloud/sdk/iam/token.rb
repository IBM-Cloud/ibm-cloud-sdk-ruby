module IBM
  module Cloud
    module SDK
      class IAM
        class Token
          def initialize(token_type, access_token)
            @token_type   = token_type
            @access_token = access_token
          end

          def authorization_header
            "#{token_type} #{access_token}"
          end

          private

          attr_reader :access_token, :token_type
        end
      end
    end
  end
end
