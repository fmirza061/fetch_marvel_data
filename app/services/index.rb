class Index
	def call
		require "uri"
		require "net/http"

		url = URI("https://gateway.marvel.com:443/v1/public/characters?apikey=bf1b808a13c6418cf2b6abcca23cbe6e&ts=1664657026378&hash=6efca6e36189af06aee1e3854deb92f0")

		https = Net::HTTP.new(url.host, url.port)
		https.use_ssl = true

		request = Net::HTTP::Get.new(url)

		response = https.request(request)
		return JSON.parse(response.body)
	end
end