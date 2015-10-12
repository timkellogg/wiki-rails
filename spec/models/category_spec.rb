require 'rails_helper'

describe Category do
  it { should validate_presence_of :name            }
  it { should validate_presence_of :img             }

  it { should have_many            :businesses      }
  it { should_not allow_value("img.svg").for(:img)  }
  it { should allow_value("img.png").for(:img)      }

end
