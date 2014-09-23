class Cell

  attr_accessor :ship, :status

  DISPLAY = {:hit => 'X', :miss => 'O', :empty => '-'}

  def initialize(ship=nil, status=:empty)
    @ship = ship
    @status = status
  end

  def hit
    @status = :hit
  end

  def miss
    @status = :miss
  end

  def indicator
     return DISPLAY[:hit] if @status == :hit
     return DISPLAY[:miss] if @status == :miss 
     return DISPLAY[:empty] if @status == :empty
     return '#' if @status != :hit && :ship
  end
end
