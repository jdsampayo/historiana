module PortfolioHelper
  def portfolio
    #@portfolio ||= ['auction-hammer', 'calculator', 'cash', 'clapper','delivery','eraser','graphs','hand-shopping-bag','light-bulb','link-plus','magic-wand','magnifier-target','medal','paper-plane','safe','seo-tag','speech-bubble','stopwatch','wallet','website-lock'].sample(6)

    #, 'graphs', 'eraser', 'magnifier-target', 'seo-tag', 'speech-bubble', 'light-bulb']

    @portfolio = [
      {
        keyword: :landing,
        icon: 'browser'
      },
      {
        keyword: :seo,
        icon: 'seo-tag'
      },
      {
        keyword: :simplification,
        icon: 'eraser'
      },
      {
        keyword: :notifications,
        icon: 'notifications'
      },
      {
        keyword: :dashboard,
        icon: 'graphs'
      }
    ]
  end

  def portfolio_thumb(item, width: "400", height: 289)
    image_tag(
      portfolio_icon(item),
      alt: portfolio_alt(item),
      class: 'img-fluid',
      loading: "lazy",
      width: width,
      height: height,
    )
  end

  def portfolio_image(item)
    image_tag(
      portfolio_icon(item),
      alt: portfolio_alt(item),
      class: 'img-fluid rounded mb-5',
      loading: "lazy",
      height: '515',
      width: '713'
    )
  end

  def portfolio_alt(item)
    t("portfolio_text.#{item[:keyword]}.title")
  end

  def portfolio_icon(item)
    "portfolio/#{item[:icon]}.svg"
  end
end
