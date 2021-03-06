require 'rails_helper'

describe Project do
  it { should validate_presence_of :project_name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :link }
end
