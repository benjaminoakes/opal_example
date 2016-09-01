require 'user'

describe User do
  describe '#admin?' do
    context 'when name is "Admin"' do
      it 'is true' do
        expect(User.new('Admin').admin?).to eq(true)
      end
    end

    context 'when name is anything else' do
      it 'is false' do
        expect(User.new('Bill').admin?).to eq(false)
      end
    end
  end
end
