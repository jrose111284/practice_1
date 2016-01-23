require 'menu'

describe Menu do
  subject(:menu) { described_class.new(dishes) }
  let (:dishes) do
    {
      Chicken: 3.50,
      Falafel: 4.50
    }
  end

  it 'has a list of dishes with prices' do
    expect(menu.dishes).to eq(dishes)
  end

  it 'prints a list of dishes with prices' do
    printed_menu = "Chicken £3.50, Falafel £4.50"
    expect(menu.print).to eq(printed_menu)
  end
end
