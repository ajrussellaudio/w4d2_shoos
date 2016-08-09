class Shoe

  attr_reader :first_name, :last_name, :address, :size, :quantity

  def initialize( options )
    @first_name = options["first_name"]
    @last_name  = options["last_name"]
    @address    = options["address"]
    @size       = options["size"]
    @quantity   = options["quantity"]
  end

  def full_name
    return @first_name.concat(" #{@last_name}")
  end

end