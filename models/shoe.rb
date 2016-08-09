require_relative "../db/sql_runner"

class Shoe

  attr_reader :first_name, :last_name, :address, :size, :quantity

  def self.all()
    sql = "SELECT * FROM shoes;"
    shoes = SqlRunner.run( sql )
    return shoes.map { |shoe| Shoe.new(shoe) }
  end

  def initialize( options )
    @first_name = options["first_name"]
    @last_name  = options["last_name"]
    @address    = options["address"]
    @size       = options["size"]
    @quantity   = options["quantity"].to_i
  end

  def full_name()
    return @first_name.concat(" #{@last_name}")
  end

  def total()
    return @quantity * 50
  end

  def save()
    sql = "INSERT INTO shoes (
      first_name,
      last_name,
      address,
      size,
      quantity
    ) VALUES (
      '#{@first_name}',
      '#{last_name}',
      '#{address}',
      '#{size}',
      #{quantity}
    ) RETURNING * ;"
    shoe = SqlRunner.run( sql ).first
    @id = shoe["id"]
  end

end