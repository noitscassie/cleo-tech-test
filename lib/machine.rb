class Machine
  attr_reader :merchandise, :user_selection

  def initialize
    @merchandise = Merchandise.new
    @user_selection = nil
  end

  def print_products
    @merchandise.products.each_with_index do |product, index|
      puts "#{index + 1}. #{product.name}. Price: #{product.price}"
    end
  end

  def process_user_selection
    @user_selection = STDIN.gets.chomp.to_i
    puts "A #{@merchandise.products[@user_selection].name} costs #{@merchandise.products[@user_selection].price}. Please insert coins."
  end
end
