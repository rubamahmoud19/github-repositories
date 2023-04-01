# Github apis
module Github
  def self.conn
    @conn ||= Faraday.new(ENV.fetch('GITHUB_URL')) do |f|
      f.request :json
      f.response :json
    end
  end

  def self.repositories(search)
    response = conn.get('/search/repositories', { q: search,
                                                  per_page: '20' })
    response.body['items'] || []
  end
end
