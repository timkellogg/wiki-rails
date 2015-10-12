require 'rails_helper'

describe Business do
  it { should belong_to            :category        }

  it { should validate_presence_of :name            }
  it { should validate_presence_of :description     }
  it { should validate_presence_of :phone           }
  it { should_not allow_value("img.svg").for(:img)  }
  it { should allow_value("img.png").for(:img)  }
  it { should_not allow_value("htt//.com").for(:url)                         }
  it { should_not allow_value("https://example").for(:url)                   }
end
