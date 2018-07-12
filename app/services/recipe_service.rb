class RecipeService

  attr_reader :q

  def initialize(params)
   @q = params[:q]
  end

  def search
    response = connection.get('/search', {
      app_id: ENV['EDAMAM_APP_ID'],
      app_key: ENV['EDAMAM_APP_SECRET'],
      q: q,
      from: 0,
      to: 20
    })
    JSON.parse(response.body, symbolize_names: true)
  end


  def connection
    @connection = Faraday.new(ENV['EDMAMAN_API_URL'])
  end
end