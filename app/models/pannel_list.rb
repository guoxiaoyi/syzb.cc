class PannelList

  attr_accessor :title, :title_length, :style

  attr_accessor :head_prefix

  attr_accessor :with_time, :time_format



  def initialize(cite_key, options = {})
    @category = begin
      WizcmsArticle::ArticleCategory.get( cite_key )
    rescue
      WizcmsArticle::ArticleCategory.new( name: 'temp', cite_key: 'temp_no_go' )
    end
    @category ||= WizcmsArticle::ArticleCategory.new( name: 'temp', cite_key: 'temp_no_go' )
    @title = @category.name
    @title_length = options[:title_length] || 18
    @style = options[:style] || ''
    @head_prefix = options[:head_prefix] || ''
    @with_time = options[:with_time] || false
    @time_format = options[:time_format] || '%m/%d'
    @list = []
  end

  def list
    @list = @category.articles.limit(8).order("published_at desc")
  end

  def identity
    @category.cite_key ? @category.cite_key : @category.id
  end

end