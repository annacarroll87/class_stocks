class TwitterApi 
  def self.response tag
  	json_data = HTTParty.get("https://api.twitter.com/1.1/search/tweets.json?q=%23#{tag}&count=5",
  	{:headers => {'Authorization' => 'Bearer AAAAAAAAAAAAAAAAAAAAAKNSvAAAAAAA%2BJMh9eA%2BloAZsXj4W5YKuUzkDFk%3DaoePOAYOYWoHUMNrBGtmNqVNTXwpwOufOCw3ZLCKPrvuAcYVxm'}})
  end
end