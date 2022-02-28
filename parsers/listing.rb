nokogiri = Nokogiri.HTML(content)

listings = nokogiri.css('ul.b-list__items_nofooter li.s-item')

listings.each do |listing|

    product = {}

    product['title'] = listing.css('h3.s-item__title').text

    product['price'] = listing.css('span.s-item__price').text

    product['url'] = listing.css('a.s-item__link')['href'] unless listing.css('a.s-item__link').nill?
    
    product['_collection'] = "listings"
    
    outputs << product

end