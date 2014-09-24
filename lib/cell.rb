class Cell

  attr_accessor :ship, :status

  MARKER = {:hit => 'X', :miss => 'O', :empty => '-'}

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

  # def incoming_shot
  #   indicator
  # end

  def indicator
     return MARKER[:hit] if @status == :hit
     return MARKER[:miss] if @status == :miss 
     return MARKER[:empty] if @status == :empty
     return '#' if @status != :hit && :ship
  end
end
