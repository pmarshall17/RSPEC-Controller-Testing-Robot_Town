require 'rails_helper'

RSpec.describe Inventor, type: :model do
  let(:inventor) { FactoryGirl.create(:inventor) }

  it { should respond_to :name }
  it { should respond_to :age }
  it { should have_many :robots }

end
