# Omniauth::Cheddar

This is the Cheddar strategy for authenticating to Cheddar with OmniAuth. To use it you'll need to create an application over at [Cheddar](https://cheddarapp.com/developer/apps)

## Usage

	use OmniAuth::Builder do
	  provider :cheddar, ENV['CHEDDAR_ID'], ENV['CHEDDAR_SECRET']
	end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
