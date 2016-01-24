require 'takeaway'

describe Takeaway do
  subject(:takeaway) { described_class.new(menu: menu, order: order) }

  let(:menu) { double(:menu, print: printed_menu) }
  let(:order) { double(:order) }
  let(:printed_menu) { "chicken: £3.50" }

  let(:dishes) { { Chiken: 2, Fish: 1 } }

  it 'shows a menu of takeaway dishes and prices' do
    expect(takeaway.print_menu).to eq(printed_menu)
  end

  it 'can order serveral number of dishes' do
    expect(order).to receive(:add).twice
    takeaway.place_order(dishes)

  end
end
