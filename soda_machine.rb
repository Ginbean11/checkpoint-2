class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
end

  def find_soda(soda_brand)
    @sodas.find {|soda| soda.brand == soda}
   
  end

  def sell(soda_brand)
    soda_sold = @sodas.find {|soda| soda.brand == soda_brand}
    return nil if soda_sold.nil?
    @cash += soda_sold.price
    @sodas.delete(soda_sold)
  end

end

