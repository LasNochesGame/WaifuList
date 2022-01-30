require 'rails_helper'

describe 'Ver waifu no  root' do
    it 'com sucesso' do
        visit root_path

        expect(page).to have_content 'Asuna'
    end
end