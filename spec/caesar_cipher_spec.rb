# frozen_string_literal: true

require_relative '../caesar-cipher'

describe '#caesar_cipher' do
  it 'returns the encrypted string' do
    expect(caesar_cipher('abc', 3)).to eql('def')
  end
end
