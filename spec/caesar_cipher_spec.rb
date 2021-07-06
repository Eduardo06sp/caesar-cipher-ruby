# frozen_string_literal: true

require_relative '../caesar-cipher'

describe '#caesar_cipher' do
  it 'returns the encrypted string' do
    expect(caesar_cipher('abc', 3)).to eql('def')
  end

  it 'wraps from z to a' do
    expect(caesar_cipher('xyz', 5)).to eql('cde')
  end

  it 'maintains case' do
    expect(caesar_cipher('hElLo', 1)).to eql('iFmMp')
  end
end
