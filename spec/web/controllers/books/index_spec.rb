RSpec.describe Web::Controllers::Books::Index, type: :action do
  let(:action) { described_class.new }
  let(:params) { Hash[] }
  let(:repository) { BookRepository.new }

  before do
    repository.clear

    @book = repository.create(title: 'TDD', author: 'Kent Beck')
  end

  it 'is successful' do
    response = action.call(params)
    expect(response[0]).to eq(200)
  end

  it 'exposes all books' do
    action.call(params)
    expect(action.exposures[:books]).to eq([@book])
  end
end
