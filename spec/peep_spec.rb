require './lib/peep'

describe '.all' do
    it 'shows all peeps' do
        connection = PG.connect(dbname: 'chitter_test')

        connection.exec("INSERT INTO chitters (peep) VALUES('This is my first peep!');")
        
        peeps = Peep.all

        expect(peeps).to include 'This is my first peep!'
    end
end