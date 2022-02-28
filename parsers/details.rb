nokogiri = Nokogiri.HTML(content)

seller = nokogiri.at_css('.seller-persona a')&.text

feedback = nokogiri.css('.seller-persona span[3]')&.text

outputs << {
    _collection: 'products',
    title: page['vars']['title'],
    price: page['vars']['price'],
    seller: seller,
    feedback: feedback,
    url: page['url']
}