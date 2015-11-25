module ShoppingSessionsHelper

  #method for validating the barcode when its a EAN-13 (13 characters)
  def control_sum_13(new_barcode)
      array = new_barcode.to_s.chars.map(&:to_i)
      weight = [1,3,1,3,1,3,1,3,1,3,1,3]
      sum = (0...12).inject(0) {|r, i| r + array[i] * weight[i]}
      if (new_barcode.to_s[12].to_i + sum)%10 == 0
        'its ok'
      else
        'error - control sum doesnt match'
      end
  end

  #method for validating the barcode when its a EAN-8 (8 characters)
  def control_sum_8(new_barcode)
    array = new_barcode.to_s.chars.map(&:to_i)
    weight = [3,1,3,1,3,1,3]
    sum = (0...7).inject(0) {|r, i| r + array[i] * weight[i]}
    if
    (new_barcode.to_s[7].to_i + sum)%10 == 0
      'its ok'
    else
      'error - control sum doesnt match'
    end
  end

  #
  def barcode_validation(new_barcode)
    if new_barcode.to_s.length == 13
      control_sum_13(new_barcode)
    elsif new_barcode.to_s.length == 8
      control_sum_8(new_barcode)
    elsif
      'wrong code dimension (EAN - 13 and EAN - 8 accepted'
  end

  end

end
