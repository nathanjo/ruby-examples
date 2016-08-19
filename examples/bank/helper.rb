class Helper

  def accepted_amount? amount
    amount%10 == 0 ? true : false
  end

  def valid_amount? amount
    amount <= 0 ? false : true
  end

  def is_number?
    input.match(/^[0-9]+$/) ? true : false
  end

  def available_denominations
    [10, 20, 50, 100]
  end
end