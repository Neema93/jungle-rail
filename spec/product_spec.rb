require 'rails_helper'
RSpec.describe Product, type: :model do
    let(:category) {Category.new(:name => 'Electronic')}
  subject {described_class.new(:name => 'Speeding fail', :quantity => 12, :price_cents => 100, :category => category)}  
  
    describe 'Validations' do
      # validation tests/examples here

      it 'please enter  valid  category' do
        subject.valid?
        expect(subject.errors).to be_empty
        assc = described_class.reflect_on_association(:category)
        expect(assc.macro).to eq :belongs_to
      end
      it 'please enter valid name' do
        subject.name = nil
      subject.valid?
      expect(subject.errors).not_to be_empty    
     end
     it 'please enter valid Quantity' do
        subject.quantity = nil
      subject.valid?
      expect(subject.errors).not_to be_empty    
     end
     it 'please enter valid Price' do
        subject.price_cents = nil
      subject.valid?
      expect(subject.errors).not_to be_empty    
     end
     it 'please enter valid Category' do
        subject.category = nil
      subject.valid?
      expect(subject.errors).not_to be_empty    
     end
    end
  end