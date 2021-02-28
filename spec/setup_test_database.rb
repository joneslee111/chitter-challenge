require 'pg'

p "Setting up test database..."

connection = PG.connet(dbname: 'chitter_test')

connection.exec('TRUNCATE chitters;')