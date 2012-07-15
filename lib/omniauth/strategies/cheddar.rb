require 'omniauth-oauth2'

module OmniAuth
	module Strategies
		class Cheddar < OmniAuth::Strategies::OAuth2

			option :name, 'cheddar'

			option :client_options, {
				:site => 'https://api.cheddarapp.com',
				:authorize_url => 'https://api.cheddarapp.com/oauth/authorize',
				:token_url => 'https://api.cheddarapp.com/oauth/token'
			}

			uid { raw_info['id'] }

			info do 
				{
					'name' => raw_info['username'],
					'urls' => {
						'Cheddar' => raw_info['url']
					},
				}
			end

			extra do
				{:raw_info => raw_info}
			end

			def raw_info
        access_token.options[:mode] = :query
        access_token.options[:param_name] = :access_token
        @raw_info ||= access_token.get('https://api.cheddarapp.com/v1/me').parsed
      end

		end
	end
end

OmniAuth.config.add_camelization 'cheddar', 'Cheddar'