require 'rails_helper'

RSpec.describe Robot, type: :model do
  let(:robot) { FactoryGirl.create(:robot) }
  let(:evil_robot) { FactoryGirl.create(:robot, :bad) }
  let(:do_math) { 1 + 1 }


  describe 'scoped block' do
    before(:all) do
      puts "This runs once"
    end

    before(:each) do
      puts "This runs 4 times"
    end

    describe 'attributes' do
      it { should respond_to :name }
      it { should validate_presence_of :name }
      it { should respond_to :friendly }
      it { should belong_to :inventor }
    end

    describe 'something else' do
    end
  end

  describe 'mechanics' do
    it 'says hello if friendly' do
      binding.pry
      expect(robot.greet).to eq('hello')
    end

    it 'says die human if not friendly' do
      expect(evil_robot.greet).to eq('die human')
    end

  end
end
