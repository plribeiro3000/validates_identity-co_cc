# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ValidatesIdentity::CoCc::Validator do
  it 'accepts 12345678' do
    expect(described_class.new('12345678')).to be_valid
  end

  it 'accepts 123456789' do
    expect(described_class.new('123456789')).to be_valid
  end

  it 'accepts 1234567890' do
    expect(described_class.new('1234567890')).to be_valid
  end

  it 'rejects 1234567' do
    expect(described_class.new('1234567')).not_to be_valid
  end

  it 'rejects 12345678901' do
    expect(described_class.new('12345678901')).not_to be_valid
  end

  it 'rejects 10-01-23-123' do
    expect(described_class.new('10-01-23-123')).not_to be_valid
  end

  it 'rejects AA-123-123' do
    expect(described_class.new('AA-123-123')).not_to be_valid
  end

  it 'rejects 1-1' do
    expect(described_class.new('1-1')).not_to be_valid
  end

  it 'rejects 0-12-12' do
    expect(described_class.new('0-12-12')).not_to be_valid
  end

  it 'rejects 1-0-1' do
    expect(described_class.new('1-0-1')).not_to be_valid
  end

  it 'rejects 1-0' do
    expect(described_class.new('1-0')).not_to be_valid
  end

  it 'rejects A' do
    expect(described_class.new('A')).not_to be_valid
  end

  it 'accepts blank string' do
    expect(described_class.new('')).to be_valid
  end

  it 'accepts nil' do
    expect(described_class.new(nil)).to be_valid
  end
end
