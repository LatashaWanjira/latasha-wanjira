require 'rails_helper'

describe Comment do
  it { should validate_presence_of :comment }
  it { should belong_to :blogpost }
end
