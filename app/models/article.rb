class Article
  cattr_reader :per_page
  @@per_page = 2

  attr_accessor :id

  def self.paginate(options = {})
    page = options.delete(:page)
    first = ((page - 1) * per_page) + 1
    last = page * per_page
    (first..last).collect do |i|
      new.tap do |article|
        article.id = i
      end
    end
  end

  def title
    "Article #{id}"
  end

  def body
    "Lorem ipsum dolor sit amet."
  end
end