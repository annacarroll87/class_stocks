class YahooApi
	def self.response tag
		yahoo_client = YahooFinance::Client.new
		data = yahoo_client.quotes(["#{tag}"], [:ask, :bid, :change, :market_capitalization, :earnings_per_share])
	end
end