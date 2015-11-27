module ShoppingSessionsHelper
  require 'nokogiri'
  require 'open-uri'

  #method for validating the barcode when its a EAN-13 (13 characters)
  def control_sum_13(new_barcode)
      array = new_barcode.to_s.chars.map(&:to_i)
      weight = [1,3,1,3,1,3,1,3,1,3,1,3]
      sum = (0...12).inject(0) {|r, i| r + array[i] * weight[i]}
      if (new_barcode.to_s[12].to_i + sum)%10 == 0
        true
      else
        false
      end
  end

  #method for validating the barcode when its a EAN-8 (8 characters)
  def control_sum_8(new_barcode)
    array = new_barcode.to_s.chars.map(&:to_i)
    weight = [3,1,3,1,3,1,3]
    sum = (0...7).inject(0) {|r, i| r + array[i] * weight[i]}
    if
    (new_barcode.to_s[7].to_i + sum)%10 == 0
      true
    else
      false
    end
  end

  #method for checking if input new_barcode is legit
  def barcode_validation(new_barcode)
    if new_barcode.to_s.length == 13
      control_sum_13(new_barcode)
    elsif new_barcode.to_s.length == 8
      control_sum_8(new_barcode)
    else
      false
    end
  end

  #method checking if a new barcode belongs to a product or does the product data has to be scraped
  def check_for_product(new_barcode)
    if barcode_validation(new_barcode)
      product  = Product.find_by_barcode(new_barcode)
      if !product.nil?
        check_for_market_product(product)
      else
        scrape(new_barcode)
      end

    else
      'INVALID BARCODE' #### will be changed into a rendered error ###
    end

  end

  #method for searching if there is a market product already linked to a market in which a shopping session is taking place
  def check_for_market_product(product)
    market_product = MarketProduct.find_by product_id: product.id, market_id: @shopping_session.market_id

    if !market_product.nil?
      create_listing(market_product.id, @shopping_session.id)
    else
      create_market_product(product.id, @shopping_session.market_id)
    end

  end

  def scrape(new_barcode)
    url = "http://www.produktywsieci.pl/gtin/#{new_barcode}"
    data = Nokogiri::HTML(open(url))
    name = data.at_css('.product-information-basic p').text.strip
    if name == "0#{new_barcode}"
      puts "no such item in database"
      name = nil
    else
      create_product(new_barcode, name)

    end

  end

  ######################################## STUBS #########################################
  def create_product(new_barcode, name)
    Product.create(barcode: new_barcode, name: name, category_id: 1)

  end

  def create_market_product(product_id, market_id)
    MarketProduct.create(product_id: product_id, market_id: market_id, price: 10)

  end

  def create_listing(market_product_id, shopping_session_id)
    Listing.create(market_product_id: market_product_id, shopping_session_id: shopping_session_id, amount: 1)
  end



end
