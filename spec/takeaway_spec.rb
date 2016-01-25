require 'takeaway'

describe Takeaway do
  subject(:takeaway) { described_class.new(menu: menu, order: order) }

  let(:menu) { double(:menu, print: printed_menu) }
  let(:order) { instance_double("order", total: 15.00) }
  let(:printed_menu) { "chicken: £3.50" }

  let(:dishes) { { Chiken: 2, Fish: 1 } }

  it 'shows a menu of takeaway dishes and prices' do
    expect(takeaway.print_menu).to eq(printed_menu)
  end

  it 'can order serveral number of dishes' do
    expect(order).to receive(:add).twice
    takeaway.place_order(dishes)
  end

  it 'knows total of order' do
    allow(order).to receive(:add)
    total = takeaway.place_order(dishes)
    expect(total).to eq(15.00)
  end


end
