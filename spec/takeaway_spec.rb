require 'takeaway'

describe Takeaway do
  subject(:takeaway) { described_class.new(menu: menu) }

  let(:menu) { double(:menu, print: printed_menu) }
  let(:printed_menu) { "chicken: £3.50" }


  it 'shows a menu of takeaway dishes and prices' do
    expect(takeaway.print_menu).to eq(printed_menu)
  end
end
