module PortfolioHelper
  def portfolio
    @portfolio ||= ['auction-hammer', 'calculator', 'cash', 'clapper','delivery','eraser','graphs','hand-shopping-bag','light-bulb','link-plus','magic-wand','magnifier-target','medal','paper-plane','safe','seo-tag','speech-bubble','stopwatch','wallet','website-lock'].sample(6)
  end

  def portfolio_thumb(keyword)
    image_tag("portfolio/#{keyword}.svg", alt: keyword.titleize, class: 'img-fluid', loading: "lazy", width: "400", height: "289")
  end

  def portfolio_image(keyword)
    image_tag("portfolio/#{keyword}.svg", alt: keyword.titleize, class: 'img-fluid rounded mb-5', loading: "lazy", height:'515', width:'713')
  end
end
